//: Playground - noun: a place where people can play

var petName : String?

//petName = "Lassie"

// petName is still an optional string even though it has been assigned to a string value! Therefore, it prints with Optional("<string value>")
print(petName)

// Use an if statement to check whether the optional string does indeed have a value (not nil):
if petName != nil {
    print("My friend has a pet named \(petName).") // This still prints Optional("<string value>") because, although you have confirmed that petName is not nil, you still have not changed its type.
} else {
    print("My friend doesn't have a pet :(")
}

// Optional Binding: Use if - let statement in order to check whether the optional contains a value, and to assign the value to a new (not optional) variable if it does.
if let petName = petName {
    print("My friend has a pet named \(petName). She's the best dog ever!")
}

// You can continue to access the optional by giving the variable a different name...
// Note: If you comment out the assignment petName = "Lassie", nothing prints -- you never enter the if statement since the optional is nil.
if let lassieName = petName {
    print("petName is still an optional: \(petName)")
    print("lassieName is a string: \(lassieName)")
}

