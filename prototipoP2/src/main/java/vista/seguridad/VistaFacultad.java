/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package vista.seguridad;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import Modelo.seguridad.ControladorFacultad;
import Controlador.seguridad.Facultad;
import java.util.ArrayList;

public class VistaFacultad extends JInternalFrame {
    private JTextField[] txtAlumnos;
    private JButton btnConfirmarAlumnos;
    private JButton btnGenerarNotas;
    private JTable tblNotas;
    private JLabel lblMejorPromedio;
    private JLabel lblPeorPromedio;
    private JButton btnReiniciar;

    private ControladorFacultad controlador;
    private DefaultTableModel modeloTabla;

    public VistaFacultad() {
        super("Registro de Notas - Facultad de Ingeniería", true, true, true, true);
        controlador = new ControladorFacultad();
        initComponents();
    }

    private void initComponents() {
        setSize(900, 650);
        setDefaultCloseOperation(JInternalFrame.DISPOSE_ON_CLOSE);
        setLayout(new BorderLayout());

        // Panel superior para los campos de texto y botones
        JPanel panelSuperior = new JPanel(new GridBagLayout());
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(5, 5, 5, 5);
        gbc.fill = GridBagConstraints.HORIZONTAL;

        txtAlumnos = new JTextField[5];
        for (int i = 0; i < 5; i++) {
            gbc.gridx = 0;
            gbc.gridy = i;
            panelSuperior.add(new JLabel("Alumno " + (i + 1) + ":"), gbc);

            gbc.gridx = 1;
            txtAlumnos[i] = new JTextField(20);
            panelSuperior.add(txtAlumnos[i], gbc);
        }

        // Botones
        gbc.gridx = 0;
        gbc.gridy = 6;
        gbc.gridwidth = 2;
        btnConfirmarAlumnos = new JButton("Registrar Alumnos");
        panelSuperior.add(btnConfirmarAlumnos, gbc);

        gbc.gridy = 7;
        btnGenerarNotas = new JButton("Generar Notas Aleatorias");
        panelSuperior.add(btnGenerarNotas, gbc);

        gbc.gridy = 8;
        btnReiniciar = new JButton("Reiniciar Registro");
        panelSuperior.add(btnReiniciar, gbc);

        add(panelSuperior, BorderLayout.NORTH);

        // Configurar la tabla
        modeloTabla = new DefaultTableModel() {
            @Override
            public boolean isCellEditable(int row, int column) {
                return false; // Hacer que la tabla no sea editable
            }
        };
        
        modeloTabla.addColumn("Alumno");
        modeloTabla.addColumn("Parcial 1 (20)");
        modeloTabla.addColumn("Parcial 2 (25)");
        modeloTabla.addColumn("Parcial 3 (35)");
        modeloTabla.addColumn("Zona (20)");
        modeloTabla.addColumn("Total");
        modeloTabla.addColumn("Promedio");

        tblNotas = new JTable(modeloTabla);
        tblNotas.setAutoCreateRowSorter(true);
        JScrollPane scrollPane = new JScrollPane(tblNotas);
        add(scrollPane, BorderLayout.CENTER);

        // Panel inferior para resultados
        JPanel panelInferior = new JPanel(new FlowLayout(FlowLayout.CENTER, 20, 10));
        lblMejorPromedio = new JLabel("Mejor promedio: ");
        lblPeorPromedio = new JLabel("Peor promedio: ");
        panelInferior.add(lblMejorPromedio);
        panelInferior.add(lblPeorPromedio);
        add(panelInferior, BorderLayout.SOUTH);

        // Configurar eventos
        btnConfirmarAlumnos.addActionListener(e -> confirmarAlumnos());
        btnGenerarNotas.addActionListener(e -> generarNotas());
        btnReiniciar.addActionListener(e -> reiniciarRegistro());
    }

    private void confirmarAlumnos() {
        for (JTextField txtAlumno : txtAlumnos) {
            String nombre = txtAlumno.getText().trim();
            if (!nombre.isEmpty()) {
                controlador.agregarEquipo(nombre);
            }
        }
        JOptionPane.showMessageDialog(this, "Alumnos registrados correctamente.");
    }

    private void generarNotas() {
        if (controlador.getAlumnos().isEmpty()) {
            JOptionPane.showMessageDialog(this, "Primero registre los alumnos", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }
        
        controlador.generarNotasAleatorias();
        actualizarTabla();
        mostrarResultados();
    }

    private void actualizarTabla() {
        modeloTabla.setRowCount(0);
        for (Facultad alumno : controlador.getAlumnos()) {
            modeloTabla.addRow(new Object[]{
                alumno.getNombre(),
                alumno.getParcial1(),
                alumno.getParcial2(),
                alumno.getParcial3(),
                alumno.getZona(),
                alumno.getTotal(),
                alumno.getPromedio()
            });
        }
    }

    private void mostrarResultados() {
        ArrayList<Facultad> alumnos = controlador.getAlumnos();
        if (!alumnos.isEmpty()) {
            lblMejorPromedio.setText("Mejor promedio: " + alumnos.get(0).getNombre() + " (" + alumnos.get(0).getPromedio() + ")");
            lblPeorPromedio.setText("Promedio mas bajo: " + alumnos.get(alumnos.size()-1).getNombre() + " (" + alumnos.get(alumnos.size()-1).getPromedio() + ")");
        }
    }

    private void reiniciarRegistro() {
        controlador = new ControladorFacultad();
        for (JTextField txtAlumno : txtAlumnos) {
            txtAlumno.setText("");
        }
        modeloTabla.setRowCount(0);
        lblMejorPromedio.setText("Mejor promedio: ");
        lblPeorPromedio.setText("Peor promedio: ");
    }
}