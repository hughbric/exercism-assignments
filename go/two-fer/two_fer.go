// Package twofer gives a two for one phrase back
package twofer

import "fmt"

// ShareWith returns the two for one statement
func ShareWith(name string) string {
	if name == "" {
		name = "you"
	}
	return fmt.Sprintf("One for %s, one for me.", name)
}
