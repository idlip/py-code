# Simple one, which asks for favorite color with pretty output

name = input("Please input your name: ")
favcolor = input("and what is your favorite color: ")
print("=" * 30 + "󰅂")
print("Hello " + name)

# legacy style
# print("Sent data that, " + name + "'s " + "favorite color is " + favcolor)
# better style (we use fstring here)
print(f"Sent data that, {name}'s favorite color is {favcolor}")

print("=" * 20 + "󰅂")
