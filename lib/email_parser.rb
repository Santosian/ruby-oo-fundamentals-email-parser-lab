# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


# def email_split(input_string)
#     output_array = nil
#     # vamos a usar un if
#     # vamos a usar esto : output_array = input_string.split(", ")
#     # vamos a revisar cual formato de input es (con coma o con espacio) y en funcion de eso vamos a hacer A o B
#     # Para revisar si es el formato de coma usamos mi_string.include? ","
#     if input_string.include? ", "
#         output_array = input_string.split(", ")
#     else
#         output_array = input_string.split(" ")
#     end

#     return output_array
# end

class EmailAddressParser
    attr_accessor :email_addresses
    # "initialize" es el nombre especial que recibe la funcion (DENTRO DE UNA CLASE) que se usa para inicializar la clase
    # se invoca mediante NombreDeLaClase.new
    # Como esta clase se llama, EmailAddressParser, se inicializa con EmailAddressParser.new
    # Como initialize acepta un argumento, entonces EmailAddressParser.new (COMO ES LA MISMA FUNCION) tambien recibe un argumento cuando se invoca
    #
    def initialize(acuerdate)
        @email_addresses = acuerdate
    end

    # def parse
    #     output_array = nil
    #     if @email_addresses.include? ", "
    #         output_array = @email_addresses.split(", ")
    #     else
    #         output_array = @email_addresses.split(" ")
    #     end
    #     return output_array
    #     #return email_split(@email_addresses)
    # end

    def parse
        # con method chaining
        output_array = @email_addresses.tr(",","").split(" ").uniq #métodos tr, split y uniq.
        # sin method chaining
        # una_variable = @email_addresses.tr(",","")
        # otra_variable = una_variable.split(" ")
        # output_array = otra_variable.uniq
        return output_array
    end
    # def parse
    #     @email_addresses.split(", ").map{|x| x.split(" ")}.reduce([]){|accum, x| accum+x}
    # end

end

# Las clases no se invocan (solo las funciones se invocan)
# Lo que se invoca es el inicializador de la clase. Ese inicializador internamente fija ciertos valores dentro de la nueva instancia y luego
#  RETORNA esa nueva INSTANCIA recien-creada

# pp "mi mama me mima"
# pp "mi mama me mima".split(" ")
# pp "mi mama me mima".split("m")
# pp "mi mama me mima".split("mi")
# pp "SantiagoXXMaxXXAlejandro".split("XX")

# #"Max, Santi, Ale" => 
# #["Max", "Santi", "Ale"]
# #["Max", " Santi", " Ale"]

# ["max@gmail.com", "santi@gmail.com"]

=begin
"MaxJJRikiJJSanti".split("JJ")
vari = "MaxJJRikiJJSanti"
vari.split("JJ")
=end