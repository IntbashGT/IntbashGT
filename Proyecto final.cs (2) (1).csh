using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto_prueba
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string nombre, modo, posicion;

            int carga;



            //Aquí se comienzan agregando los datos del robot 

            Console.Write("Ingrese el nombre del robot:");

            nombre = Console.ReadLine();



            //aqui tienes revueltas 2 variables.  El modo alterno puede ser Camion, Moto o Carro.

            //Aparte debes de tener una variable donde se maneja si esta en modo robot o modo vehiculo -sugierio una variable bool-
            // NO HAY RESOLUCION

            Console.Write("Ingrese el modo del robot (Camion, Moto, Vehiculo, Robot): ");

            modo = Console.ReadLine();



            //esto esta bien y funciona
            // ESTA PARTE EVALUA QUE EL MODO SEA VÁLIDO Y QUE NO INTRODUZCAN UN VALOR NO VÁLIDO 
            while (modo != "Camion" && modo != "Moto" && modo != "Vehiculo" && modo != "Robot")

            {

                Console.Write("Modo del robot no válido, intente nuevamente. Ingrese el modo del robot (Camion, Moto, Vehiculo):");

                modo = Console.ReadLine();

            }


            Console.Write("Ingrese la carga de su robot en porcentaje 0%-100%: ");

            carga = Convert.ToInt32(Console.ReadLine());





            //aqui revisa que carga no sea menor a 0 ni mayor a 100

            while (carga > 100 || carga < 0)

            {

                Console.Write("Numero de carga no válido, intente nuevamente");

                carga = Convert.ToInt32(Console.ReadLine());

            }



            Console.Write("Ingrese la posición desde la base de su robot en km: ");

            posicion = Console.ReadLine();





            Console.Clear();

            Console.WriteLine("MENÚ DE OPCIONES");

            Console.WriteLine("1. Información del robot");

            Console.WriteLine("2. Carga de energon");

            Console.WriteLine("3. Transformación");

            Console.WriteLine("4. Distancia para alcanzar");

            Console.WriteLine("5. SALIR");



            string soli;

            Console.Write("Seleccione una opción:");


            soli = Console.ReadLine();

            //EVALUA QUE SOLO INGRESEN NUMEROS DEL 1 AL 5 

            while (soli != "1" && soli != "2" && soli != "3" && soli != "4" && soli != "5")

            {

                Console.WriteLine("Número de opción no válida, intente nuevamente");
                soli = Console.ReadLine();



            }


            //ASIGNA UNA ACCION AL NUMERO QUE ELIJAN MIENTRAS NO SEA 5 

            while (soli != "5")

            {

                if (soli == "1")

                {

                    Console.WriteLine(" ");
                    Console.WriteLine(" ");

                    Console.WriteLine("1. Nombre del robot:" + nombre);

                    Console.WriteLine("2. Modo del robot: " + modo);

                    Console.WriteLine("3. Carga inicial de energon" + carga + "%");

                    Console.WriteLine("4. Posición desde la base en km: " + posicion);



                }

                else if (soli == "2")

                {

                    //aqui falta un if que valide que no se pase de 100%

                    // int b = 0;


                    // cargar = 0;

                    // carga = 100;

                    // NO TIENE RESOLUCION 

                    // LA CARGA + 5 
                    carga = carga + 5;

                    //aqui recarga 5  
                    // while (b == 0)
                    // {

                    if (carga < 100)
                    {
                        if (carga == 100)
                        {
                            Console.WriteLine("Carga completa al 100%");
                            carga = 100;


                        }
                        Console.WriteLine(" ");
                        Console.WriteLine(" ");
                        Console.WriteLine("Su carga actual ahora es: " + carga);
                    }
                    else if (carga > 100)
                    {
                        Console.WriteLine("Su carga esta completa: " + carga);
                    }
                }







                //  b = Convert.ToInt32(Console.ReadLine());
                // }






                //}

                else if (soli == "3")

                {



                    //aqui tienes que usar la otra variable -la bool-
                    //NO TIENE RESOLUCION 

                    Console.WriteLine(" ");
                    Console.WriteLine(" ");
                    Console.WriteLine(" ");

                    Console.WriteLine("Modo del robot actual:" + modo);



                }

                else if (soli == "4")

                {


                    //bool mod;
                    //int cargar = 0;

                    // if (modo == "Robot")
                    // {
                    //gasto = carga - 5;
                    //mod = false;

                    // }
                    //Auto 
                    //if (modo == "Vehiculo")
                    // {
                    //  gasto = carga - 10;
                    // mod = true;
                    //  }
                    //Camion 
                    // if (modo == "Camion")
                    //{
                    //  gasto = carga - 25;
                    //  mod = true;
                    // }
                    //Moto 
                    //if (modo == "Moto")
                    // {
                    //  gasto = carga - 20;
                    //  mod = true;
                    // }

                    //while (carga > 0 && reloj <= TEMP)
                    //{
                    //  KM = posI + (reloj * 50);
                    //carga = carga - gasto;
                    //if (carga < 0)
                    //{
                    //  Console.WriteLine("Energon insuficiente.");
                    //break;
                    //}
                    //Console.WriteLine("LLeva un recorrido de" + KM + "km\nCon un tiempo de: " + TEMP + "h\nCon un gasto de energon: " + gasto);
                    //reloj++;
                    //Console.WriteLine("Presiona Enter para continuar...");

                    // }



                    //el while puede ser while energon > 0 && contador <=TEMP


                    //ESTE SI FUNCIONA CON SUS ERRORES 

                    int cargaA, posI, TEMP, KM;
                    Console.WriteLine(" ");
                    Console.WriteLine(" ");
                    Console.Write("Indique la cantidad de tiempo que desea mover el robot en horas: ");
                    TEMP = Convert.ToInt32(Console.ReadLine());

                    posI = Convert.ToInt32(posicion);

                    

                    if (modo == "Camion")

                    {

                        KM = posI + (TEMP * 85);
                        cargaA = carga - 25;


                        Console.WriteLine("La distancia a recorrer será de: " + KM);
                        Console.WriteLine("El energon restante es de: " + cargaA + "%");


                    }

                    else if (modo == "Moto")

                    {



                        KM = posI + (TEMP * 120);
                        cargaA = carga - 20;

                        Console.WriteLine("La distancia a recorrer será de: " + KM);
                        Console.WriteLine("El energon restante es de: " + cargaA + "%");

                    }

                    else if (modo == "Vehiculo")

                    {



                        KM = posI + (TEMP * 110);
                        cargaA = carga - 10;

                        Console.WriteLine("La distancia a recorrer será de: " + KM);
                        Console.WriteLine("El energon restante es de: " + cargaA + "%");

                    }

                    for (int i = 1; i < TEMP; i++)
                    {
                        KM = posI + i;


                        Console.WriteLine("El movimiento durante la hora " + i + "Sería de" + KM);

                    }



                }



                // esto va a hacer que siga pidiendo opcion hasta que seleccione 5

                Console.WriteLine("");

                Console.WriteLine("Presiona cualquier tecla para continuar...");

                Console.ReadKey();



                //esto vuelve a poner el menu

                Console.Clear();

                Console.WriteLine("MENÚ DE OPCIONES");

                Console.WriteLine("1. Información del robot");

                Console.WriteLine("2. Carga de energon");

                Console.WriteLine("3. Transformación");

                Console.WriteLine("4. Distancia para alcanzar");

                Console.WriteLine("5. SALIR");





                Console.Write("Seleccione una opción:");

                soli = Console.ReadLine();



                while (soli != "1" && soli != "2" && soli != "3" && soli != "4" && soli != "5")

                {

                    Console.WriteLine("Número de opción no válida, intente nuevamente");

                    soli = Console.ReadLine();



                }

                Console.WriteLine("");

                Console.WriteLine("Presiona cualquier tecla para continuar...");

                Console.ReadKey();



                Console.Clear();

                Console.WriteLine("MENÚ DE OPCIONES");

                Console.WriteLine("1. Información del robot");

                Console.WriteLine("2. Carga de energon");

                Console.WriteLine("3. Transformación");

                Console.WriteLine("4. Distancia para alcanzar");

                Console.WriteLine("5. SALIR");



            }

            Console.WriteLine("Gracias por usar el sistema. Presiona cualquier tecla para continuar...");

            Console.ReadKey();

            //FIN
        }

        //DEFECTOS DEL PROGRAMA: Solo evalua el "modo" cuando se ingresa la palabra tal y como está en el menú
        // No agregamos el ciclo while para evaluar el modo en el que está el robot
        // No hay un if que no permita que la carga pase de 100 
        //  No hay variables booleanas para asiganr el modo robot o vehículo 
    }
}


