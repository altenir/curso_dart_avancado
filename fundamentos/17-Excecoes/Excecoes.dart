/**
 * * TRATAMENTO DE EXCECAO!
 * - try: Usando para testar uma lógica.
 * - catch: Captura erros na lógica.
 * - on: Captura especificos/conhecidos na lógica try.
 * - throw Exception: Exceção criada pelo usuario e tratada no cath.
 * - finally: É executado ao final try/catch, com exceção ou não! utilizado liberar recursos na logica try.
 */

///
///  CASO1 ; Quando você desconhece a excecao, use a clausula TRY CATCH
///
caso1() {
  print('\n17.0.1) Try Catch\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e) {
    print('Excecao: $e');
  }
}

///
///  CASO2 ; Quando você conhece a excecao, use a clausula ON
///
caso2() {
  print('\n17.0.2) ON\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } on IntegerDivisionByZeroException {
    print('Excecao: não é possivel dividir por zero');
  } catch (e) {
    print('Excecao: $e');
  }
}

///
///  CASO3 ; Para descobrir eventos ocorridos antes da excecao, use STACK TRACE
///
caso3() {
  print('\n17.0.3) Stack Trace\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e, s) {
    print('Excecao: $e');
    print('Stack Trace: $s');
  }
}

///
///  CASO4 ; Use FINALLY para tratamentos após a execução do Try Catch
///
caso4() {
  print('\n17.0.4) Finally\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e) {
    print('Excecao: $e');
  } finally {
    print('finaly: Com ou sem excecao "finally" sera executado!');
  }
}

///
///  CASO4 ; Use THROW EXCEPTION para tratamentos após a execução do Try Catch
///
caso5() {
  print('\n17.0.5) Throw Exception\n');
  try {
    int valorA = 1, valorB = 0;
    double resultado = valorA / valorB;

    if (resultado.isInfinite)
      throw Exception('A variavel valorB deve ser != 0');

    print('Resultado: $resultado');
  } catch (e) {
    print('Excecao: $e');
  } finally {
    print('finaly: Com ou sem excecao "finally" sera executado!');
  }
}

main() {
  print('17.0.0) Tratamento de Excecoes\n');
  caso1();
  caso2();
  caso3();
  caso4();
  caso5();
}
