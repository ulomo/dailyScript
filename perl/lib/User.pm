package User;

sub new{
    $class = shift;
    $self = {
    username => shift,
    age => shift,
    password => shift 
};
    bless $self,$class;
}

sub getname{
    $self = shift;
    $self -> {username};
}

sub setname{
    ($self,$name) = @_;
    $self -> {username} = $name;
    return "\n";
}

1;

