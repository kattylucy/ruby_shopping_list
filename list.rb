def create_list 
    print 'What is the list name? '
    name = gets.chomp
    hash = {"name" => name, "items" => []}
    return hash
end

def add_list_item
    print "what is the item called? "
    item_name = gets.chomp;
    print "how many do you need? "
    item_quantity = gets.chomp;
    hash = {'name' => item_name, 'quantity' => item_quantity}
    return hash
end

def print_list(list)
    puts "List: #{list['name']}"
    separator('-')

    list['items'].each do |item|
        puts "\t" + "Item: " + item['name'] + "\t\t\t" + "Quantity: " + item['quantity'].to_s
    end

    separator('-')
end

def separator(charac)
    puts charac * 80
end

def add_to_list
    list = create_list();
    loop do
        puts "Do you want to continue adding(y/n)? "
        response = gets.chomp;
        if response == 'n'
            print_list(list)
            break
        elsif
            list['items'].push(add_list_item)
        end
    end
end



add_to_list