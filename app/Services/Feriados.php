<?php

namespace App\Services;

class Feriados
{
    /**
     * dataPascoa(ano, formato);
     * Autor: Yuri Vecchi
     *
     * Funcao para o cálculo da Páscoa
     * Retorna o dia da páscoa no formato desejado ou false.
     *
     * ######################ATENCAO###########################
     * Esta função sofre das limitacoes de data de mktime()!!!
     * ########################################################
     *
     * Possui dois parâmetros, ambos opcionais
     * ano = ano com quatro dígitos
     * Padrão: ano atual
     * formato = formatação da função date() http://br.php.net/date
     * Padrão: d/m/Y
     *
     * @param bool $ano
     * @param string $form
     * @return false|string
     */
    public function dataPascoa($ano = false, $form = "d/m/Y")
    {
        $ano = $ano ? $ano : date("Y");
        if ($ano < 1583) {
            $A = ($ano % 4);
            $B = ($ano % 7);
            $C = ($ano % 19);
            $D = ((19 * $C + 15) % 30);
            $E = ((2 * $A + 4 * $B - $D + 34) % 7);
            $F = ( int )(($D + $E + 114) / 31);
            $G = (($D + $E + 114) % 31) + 1;

            return date($form, mktime(0, 0, 0, $F, $G, $ano));
        } else {
            $A = ($ano % 19);
            $B = ( int )($ano / 100);
            $C = ($ano % 100);
            $D = ( int )($B / 4);
            $E = ($B % 4);
            $F = ( int )(($B + 8) / 25);
            $G = ( int )(($B - $F + 1) / 3);
            $H = ((19 * $A + $B - $D - $G + 15) % 30);
            $I = ( int )($C / 4);
            $K = ($C % 4);
            $L = ((32 + 2 * $E + 2 * $I - $H - $K) % 7);
            $M = ( int )(($A + 11 * $H + 22 * $L) / 451);
            $P = ( int )(($H + $L - 7 * $M + 114) / 31);
            $Q = (($H + $L - 7 * $M + 114) % 31) + 1;

            return date($form, mktime(0, 0, 0, $P, $Q, $ano));
        }
    }

    /**
     * dataCarnaval(ano, formato);
     * Autor: Yuri Vecchi
     * Funcao para o calculo do Carnaval
     * Retorna o dia do Carnaval no formato desejado ou false.
     *
     * ######################ATENCAO###########################
     * Esta funcao sofre das limitacoes de data de mktime()!!!
     * ########################################################
     *
     * Possui dois parametros, ambos opcionais
     * ano = ano com quatro digitos
     * Padrao: ano atual
     * formato = formatacao da funcao date() http://br.php.net/date
     * Padrao: d/m/Y
     *
     * @param bool $ano
     * @param string $form
     * @return false|string
     */
    public function dataCarnaval($ano = false, $form = "d/m/Y")
    {
        $ano = $ano ? $ano : date("Y");
        $a   = explode("/", $this->dataPascoa($ano));

        return date($form, mktime(0, 0, 0, $a[1], $a[0] - 47, $a[2]));
    }

    /**
     * dataCorpusChristi(ano, formato);
     * Autor: Yuri Vecchi
     * Funcao para o calculo do Corpus Christi
     * Retorna o dia do Corpus Christi no formato desejado ou false.
     *
     * ######################ATENCAO###########################
     * Esta funcao sofre das limitacoes de data de mktime()!!!
     * ########################################################
     *
     * Possui dois parametros, ambos opcionais
     * ano = ano com quatro digitos
     * Padrao: ano atual
     * formato = formatacao da funcao date() http://br.php.net/date
     * Padrao: d/m/Y
     *
     * @param bool $ano
     * @param string $form
     * @return false|string
     */
    public function dataCorpusChristi($ano = false, $form = "d/m/Y")
    {
        $ano = $ano ? $ano : date("Y");
        $a   = explode("/", $this->dataPascoa($ano));

        return date($form, mktime(0, 0, 0, $a[1], $a[0] + 60, $a[2]));
    }

    /**
     * dataSextaSanta(ano, formato);
     * Autor: Yuri Vecchi
     * Funcao para o calculo da Sexta-feira santa ou da Paixao.
     * Retorna o dia da Sexta-feira santa ou da Paixao no formato desejado ou false.
     *
     * ######################ATENCAO###########################
     * Esta funcao sofre das limitacoes de data de mktime()!!!
     * ########################################################
     *
     * Possui dois parametros, ambos opcionais
     * ano = ano com quatro digitos
     * Padrao: ano atual
     * formato = formatacao da funcao date() http://br.php.net/date
     * Padrao: d/m/Y
     *
     * @param bool $ano
     * @param string $form
     * @return false|string
     */
    public function dataSextaSanta($ano = false, $form = "d/m/Y")
    {
        $ano = $ano ? $ano : date("Y");
        $a   = explode("/", $this->dataPascoa($ano));

        return date($form, mktime(0, 0, 0, $a[1], $a[0] - 2, $a[2]));
    }

    public function dataDiaPais($ano = false, $form = "d/m/Y")
    {
        $ano = $ano ? $ano : date("Y");

        $diaDosPais = null;
        $sunday     = 0;
        for ($i = 1; $i <= 31; $i++) {

            $day = $i;
            if ($i < 10)
                $day = "0$i";

            $date = "$ano-08-$day";
            $week = date('w', strtotime($date));
            if ($week == 0)
                $sunday++;

            if ($sunday == 2) {
                $diaDosPais = date($form, strtotime($date));
                break;
            }
        }

        $a = explode("/", $diaDosPais);

        return date($form, mktime(0, 0, 0, $a[1], $a[0], $a[2]));
    }

    public function dataDiaMaes($ano = false, $form = "d/m/Y")
    {
        $ano = $ano ? $ano : date("Y");

        $diaDosMaes = null;
        $sunday     = 0;
        for ($i = 1; $i <= 31; $i++) {

            $day = $i;
            if ($i < 10)
                $day = "0$i";

            $date = "$ano-05-$day";
            $week = date('w', strtotime($date));
            if ($week == 0)
                $sunday++;

            if ($sunday == 2) {
                $diaDosMaes = date($form, strtotime($date));
                break;
            }
        }

        $a = explode("/", $diaDosMaes);

        return date($form, mktime(0, 0, 0, $a[1], $a[0], $a[2]));
    }

    public function getArrayFeriados($ano = false)
    {
        $ano = $ano ? $ano : date("Y");
        /**
         * chama a funcao que calcula a pascoa
         */
        $pascoa_dt   = $this->dataPascoa($ano);
        $aux_p       = explode("/", $pascoa_dt);
        $aux_dia_pas = $aux_p[0];
        $aux_mes_pas = $aux_p[1];
        $pascoa      = "$aux_mes_pas" . "-" . "$aux_dia_pas"; // crio uma data somente como mes e dia
        /**
         * chama a funcao que calcula o carnaval
         */
        $carnaval_dt   = $this->dataCarnaval($ano);
        $aux_carna     = explode("/", $carnaval_dt);
        $aux_dia_carna = $aux_carna[0];
        $aux_mes_carna = $aux_carna[1];
        $carnaval      = "$aux_mes_carna" . "-" . "$aux_dia_carna";
        /**
         * chama a funcao que calcula corpus christi
         */
        $CorpusChristi_dt = $this->dataCorpusChristi($ano);
        $aux_cc           = explode("/", $CorpusChristi_dt);
        $aux_cc_dia       = $aux_cc[0];
        $aux_cc_mes       = $aux_cc[1];
        $Corpus_Christi   = "$aux_cc_mes" . "-" . "$aux_cc_dia";
        /**
         * chama a funcao que calcula a sexta feira santa
         */
        $sexta_santa_dt = $this->dataSextaSanta($ano);
        $aux            = explode("/", $sexta_santa_dt);
        $aux_dia        = $aux[0];
        $aux_mes        = $aux[1];
        $sexta_santa    = "$aux_mes" . "-" . "$aux_dia";
        /**
         * chama a funcao que calcula o dia dos Pais
         */
        $dia_pais_dt = $this->dataDiaPais($ano);
        $aux         = explode("/", $dia_pais_dt);
        $aux_dia     = $aux[0];
        $aux_mes     = $aux[1];
        $dia_pais    = "$aux_mes" . "-" . "$aux_dia";
        /**
         * chama a funcao que calcula o dia dos Maes
         */
        $dia_maes_dt = $this->dataDiaMaes($ano);
        $aux         = explode("/", $dia_maes_dt);
        $aux_dia     = $aux[0];
        $aux_mes     = $aux[1];
        $dia_maes    = "$aux_mes" . "-" . "$aux_dia";

        return [
            "01-01", // Ano Novo
            $carnaval, // Carnaval
            $sexta_santa, // Sexta-Feira Santa
            $pascoa, // Domingo de Páscoa
            $Corpus_Christi, // Corpus Christi
            "04-21", // Tira Dentes
            "05-01", // Dia do Trabalhador
            $dia_maes,
            "05-17",
            "06-12", // Dia dos Namorados
            $dia_pais,
            "09-07",
            "10-12",
            "11-02",
            "11-15",
            "12-25",
        ];
    }
}