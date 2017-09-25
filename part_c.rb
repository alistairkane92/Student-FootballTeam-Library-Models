class Library

    def initialize(library)
        @library = library
    end

    def list_books
        return @library
    end

    def find_book(name)
        for book in @library
            if book[:title] == name
                return book
            end
        end
    end

    def rental_details(name)
        for book in @library
            if book[:title] == name
                return book[:rental_details]
            end
        end
    end
end
