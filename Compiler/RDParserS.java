import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

public class RDParserS {
private String input = "";
private int cursor = 0;

static class Node extends ArrayList<Node> {
    private final String name;
    public Node(String name, Node... children) {
        this.name = Objects.requireNonNull(name);
        addAll(Arrays.asList(children));
    }
    @Override public String toString() {
        return isEmpty()? name: name + super.toString();
    }
    void prettyPrint() {
        prettyPrint(1);
    }
    void prettyPrint(int depth) {
        System.out.printf("%" + (depth * 4) + "s%s%n", "", name);
        forEach(child -> child.prettyPrint(depth + 1));
    }
}

static class SyntaxErrorException extends Exception {
    SyntaxErrorException(String message) {
        super(message);
    }
}


public RDParserS(){}

public static void main(String... args) throws SyntaxErrorException {
RDParserS parser = new RDParserS();
Node parseTree = parser.parse(args[0] + "$");
System.out.println(parseTree);
parseTree.prettyPrint();
}

Node parse(String input) throws SyntaxErrorException {
this.input = input;
return S();
}

Node terminal(char wanted) throws SyntaxErrorException {
if (input.charAt(cursor) != wanted) {
throw new SyntaxErrorException("Error: expected " + wanted + ", got " + input.charAt(cursor + 1));
}
return new Node (String.valueOf(input.charAt(cursor++)));
}

Node A() throws SyntaxErrorException {
char lookahead = input.charAt(cursor);
if (lookahead == 'a') {
return new Node("A", terminal('a'));
} else {
throw new SyntaxErrorException("Error: expected one of [a] got " + lookahead);
}
}

Node S() throws SyntaxErrorException {
char lookahead = input.charAt(cursor);
if (lookahead == 'a') {
return new Node("S", A(), T());
} else if (lookahead == 'b') {
return new Node("S", terminal('b'));
} else {
throw new SyntaxErrorException("Error: expected one of [a, b] got " + lookahead);
}
}

Node T() throws SyntaxErrorException {
char lookahead = input.charAt(cursor);
if (lookahead == 'c') {
return new Node("T", terminal('c'));
} else {
throw new SyntaxErrorException("Error: expected one of [c] got " + lookahead);
}
}

}
