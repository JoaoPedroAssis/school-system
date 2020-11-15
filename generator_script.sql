create table ar_internal_metadata
(
    `key`      varchar(255) not null
        primary key,
    value      varchar(255) null,
    created_at datetime     not null,
    updated_at datetime     not null
);

create table schema_migrations
(
    version varchar(255) not null
        primary key
);

create table students
(
    id                bigint auto_increment
        primary key,
    matricula         varchar(255) null,
    nome              varchar(255) null,
    sexo              varchar(255) null,
    estado_civil      varchar(255) null,
    filiacao          varchar(255) null,
    endereco          varchar(255) null,
    telefone          varchar(255) null,
    email             varchar(255) null,
    esporte_preferido varchar(255) null,
    escolaridade      varchar(255) null,
    naturalidade      varchar(255) null,
    cidade            varchar(255) null,
    uf                varchar(255) null,
    pais              varchar(255) null,
    cargo             varchar(255) null,
    cpf               varchar(255) null,
    identidade        varchar(255) null,
    created_at        datetime     not null,
    updated_at        datetime     not null
);

create table teachers
(
    id           bigint auto_increment
        primary key,
    matricula    varchar(255) null,
    nome         varchar(255) null,
    sexo         varchar(255) null,
    estado_civil varchar(255) null,
    filiacao     varchar(255) null,
    titulacao    varchar(255) null,
    endereco     varchar(255) null,
    telefone     varchar(255) null,
    cpf          varchar(255) null,
    identidade   varchar(255) null,
    naturalidade varchar(255) null,
    cidade       varchar(255) null,
    uf           varchar(255) null,
    pais         varchar(255) null,
    email        varchar(255) null,
    escolaridade varchar(255) null,
    cargo        varchar(255) null,
    created_at   datetime     not null,
    updated_at   datetime     not null
);

create table courses
(
    id             bigint auto_increment
        primary key,
    codigo         varchar(255) null,
    descricao      text         null,
    horas_aula     int          null,
    vagas_total    int          null,
    vagas_ocupadas int          null,
    data_inicio    date         null,
    data_fim       date         null,
    teacher_id     bigint       null,
    created_at     datetime     not null,
    updated_at     datetime     not null,
    constraint fk_rails_a68eff6aff
        foreign key (teacher_id) references teachers (id)
);

create index index_courses_on_teacher_id
    on courses (teacher_id);

create table courses_students
(
    student_id bigint null,
    course_id  bigint null,
    constraint fk_rails_20e6a4d275
        foreign key (student_id) references students (id),
    constraint fk_rails_a1b35a8e05
        foreign key (course_id) references courses (id)
);

create index index_courses_students_on_course_id
    on courses_students (course_id);

create index index_courses_students_on_student_id
    on courses_students (student_id);

