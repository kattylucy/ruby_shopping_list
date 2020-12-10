def ask(question, kind="string")
    print question + ' '
    answer = gets.chomp
    answer = answer.to_i if kind == "number"
    return answer
end

def create_list_name
    list_name = ask('What is your name?')
    create_new_contact()
end



def create_new_contact
    contact_list = []
    loop do
        response = ask('Do you want to add a new contact? (y/n):')
        if response == 'n' 
            print_list(contact_list)
            break
        else
            contact_name = ask('What is your contact name?')
            contact_number = ask('What is your contact number?', 'number')
            contact_info = {"contact_name" => contact_name, "contact_number" => contact_number}
            contact_list.push(contact_info)
        end 
    end
end


def print_list(list)
    list.each do |item|
        puts "Name: #{item["contact_name"]} \t Phone-Number: #{item["contact_number"]}"
    end

end





create_list_name