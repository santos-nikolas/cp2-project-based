// --- Check Point 2: Engenharia de Software FIAP ---
// Peça: Engrenagem Periférica com Encaixe Quadrado
// Objetivo: Modelagem 3D para o sistema de caixa mecânica (Iris Box)

$fn = 100; // Definição de faces para círculos suaves

// --- Parâmetros da Peça ---
num_dentes = 12;
diametro_base = 20; // Diâmetro do corpo da engrenagem
espessura_engrenagem = 6;
furo_eixo = 5.2; // Diâmetro do furo central (com folga)
tamanho_encaixe_quadrado = 5.5; // Lado do quadrado superior
altura_encaixe_quadrado = 4.5;

// --- Execução do Modelo ---
union() {
    // 1. Corpo da Engrenagem e Dentes
    difference() {
        union() {
            // Disco Base
            cylinder(h = espessura_engrenagem, d = diametro_base);
            
            // Criação dos dentes usando loop de rotação
            for (i = [0 : num_dentes - 1]) {
                rotate([0, 0, i * (360 / num_dentes)])
                translate([diametro_base / 2 - 1, 0, 0])
                dente_engrenagem();
            }
        }
        
        // 2. Furo Central para o Eixo
        translate([0, 0, -1])
        cylinder(h = espessura_engrenagem + 2, d = furo_eixo);
    }

    // 3. Encaixe Quadrado Superior (para movimentar as pétalas)
    translate([0, 0, espessura_engrenagem])
    difference() {
        // Bloco quadrado centralizado
        translate([-tamanho_encaixe_quadrado/2, -tamanho_encaixe_quadrado/2, 0])
        cube([tamanho_encaixe_quadrado, tamanho_encaixe_quadrado, altura_encaixe_quadrado]);
        
        // Mantém o furo passando pelo quadrado também
        translate([0, 0, -1])
        cylinder(h = altura_encaixe_quadrado + 2, d = furo_eixo);
    }
}

// --- Módulo do Dente (Geometria Básica) ---
module dente_engrenagem() {
    // Formato trapezoidal simples para evitar necessidade de suportes
    linear_extrude(height = espessura_engrenagem)
    polygon(points=[[0,-2],[3,-1],[3,1],[0,2]]);
}
