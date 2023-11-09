CREATE TABLE Paciente(
    id_paciente int not null, 
    nombre varchar(255) not null,
    apellidos varchar(255) not null, 
    edad int not null,
    telefono int,
    sexo varchar(20) CHECK (sexo IN ('HOMBRE', 'MUJER')),
    primary key(id_paciente)
);

CREATE TABLE Medico(
    id_medico int not null,
    nombre varchar(255) not null,
    apellidos varchar(255) not null, 
    especialidad varchar(255),
    primary key(id_medico)
);

CREATE TABLE Consultorio(
    id_consultorio int not null auto_increment,
    direccion varchar(255) not null,
    hora_apertura time not null,
    hora_cierre time not null,
    primary key(id_consultorio)
);

CREATE TABLE Horario(
    id_horario int not null,
    horario datetime not null,
    primary key(id_horario)
);

CREATE TABLE Cita(
    id_cita int not null auto_increment,
    id_paciente int,
    id_medico int,
    id_horario int,
    id_fecha int,
    id_consultorio int,
    primary key(id_cita),
    foreign key (id_paciente) references Paciente(id_paciente),
    foreign key (id_medico) references Medico(id_medico),
    foreign key (id_horario) references Horario(id_horario),
    foreign key (id_consultorio) references Consultorio(id_consultorio)  
);
