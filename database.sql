PGDMP         8                {           consolidacion_m7    14.8    14.8                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    279513    consolidacion_m7    DATABASE     l   CREATE DATABASE consolidacion_m7 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
     DROP DATABASE consolidacion_m7;
                postgres    false            �            1259    8158489    Alumnos    TABLE     �  CREATE TABLE public."Alumnos" (
    id character varying(5) NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    admin boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Alumnos";
       public         heap    postgres    false            �            1259    8158498    Cursos    TABLE     C  CREATE TABLE public."Cursos" (
    id integer NOT NULL,
    nombre character varying(200) NOT NULL,
    cue integer NOT NULL,
    descripcion character varying(200) NOT NULL,
    imagen character varying(500) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Cursos";
       public         heap    postgres    false            �            1259    8158506    CursosAlumnos    TABLE     �   CREATE TABLE public."CursosAlumnos" (
    "idAlumno" character varying(5) NOT NULL,
    "idCurso" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."CursosAlumnos";
       public         heap    postgres    false            �            1259    8158497    Cursos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Cursos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Cursos_id_seq";
       public          postgres    false    213                       0    0    Cursos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Cursos_id_seq" OWNED BY public."Cursos".id;
          public          postgres    false    212            �            1259    8118707    address    TABLE     �   CREATE TABLE public.address (
    addressid integer NOT NULL,
    addressline1 character varying(60),
    addressline2 character varying(60),
    city character varying(30),
    postalcode character varying(15)
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    8118713 
   creditcard    TABLE     �   CREATE TABLE public.creditcard (
    creditcardid integer NOT NULL,
    cardtype character varying(50),
    cardnumber character varying(25),
    expmonth smallint,
    expyear smallint
);
    DROP TABLE public.creditcard;
       public         heap    postgres    false            m           2604    8158501 	   Cursos id    DEFAULT     j   ALTER TABLE ONLY public."Cursos" ALTER COLUMN id SET DEFAULT nextval('public."Cursos_id_seq"'::regclass);
 :   ALTER TABLE public."Cursos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213                      0    8158489    Alumnos 
   TABLE DATA           k   COPY public."Alumnos" (id, nombre, apellido, email, password, admin, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    211   
#                 0    8158498    Cursos 
   TABLE DATA           b   COPY public."Cursos" (id, nombre, cue, descripcion, imagen, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    213   �#                 0    8158506    CursosAlumnos 
   TABLE DATA           Z   COPY public."CursosAlumnos" ("idAlumno", "idCurso", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    214   P)                 0    8118707    address 
   TABLE DATA           Z   COPY public.address (addressid, addressline1, addressline2, city, postalcode) FROM stdin;
    public          postgres    false    209   �)                 0    8118713 
   creditcard 
   TABLE DATA           [   COPY public.creditcard (creditcardid, cardtype, cardnumber, expmonth, expyear) FROM stdin;
    public          postgres    false    210   �)                  0    0    Cursos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Cursos_id_seq"', 12, true);
          public          postgres    false    212            u           2606    8158525    Alumnos Alumnos_email_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key" UNIQUE (email);
 G   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key";
       public            postgres    false    211            w           2606    8158527    Alumnos Alumnos_email_key1 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1" UNIQUE (email);
 H   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1";
       public            postgres    false    211            y           2606    8158494    Alumnos Alumnos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_pkey";
       public            postgres    false    211            }           2606    8158510     CursosAlumnos CursosAlumnos_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public."CursosAlumnos"
    ADD CONSTRAINT "CursosAlumnos_pkey" PRIMARY KEY ("idAlumno", "idCurso");
 N   ALTER TABLE ONLY public."CursosAlumnos" DROP CONSTRAINT "CursosAlumnos_pkey";
       public            postgres    false    214    214            {           2606    8158505    Cursos Cursos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Cursos"
    ADD CONSTRAINT "Cursos_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Cursos" DROP CONSTRAINT "Cursos_pkey";
       public            postgres    false    213            o           2606    8118711    address address_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (addressid);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    209            r           2606    8118717    creditcard creditcard_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.creditcard
    ADD CONSTRAINT creditcard_pkey PRIMARY KEY (creditcardid);
 D   ALTER TABLE ONLY public.creditcard DROP CONSTRAINT creditcard_pkey;
       public            postgres    false    210            p           1259    8118712 
   pk_address    INDEX     J   CREATE UNIQUE INDEX pk_address ON public.address USING btree (addressid);
    DROP INDEX public.pk_address;
       public            postgres    false    209            s           1259    8118718    pk_creditcard    INDEX     S   CREATE UNIQUE INDEX pk_creditcard ON public.creditcard USING btree (creditcardid);
 !   DROP INDEX public.pk_creditcard;
       public            postgres    false    210            ~           2606    8158511 )   CursosAlumnos CursosAlumnos_idAlumno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CursosAlumnos"
    ADD CONSTRAINT "CursosAlumnos_idAlumno_fkey" FOREIGN KEY ("idAlumno") REFERENCES public."Alumnos"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public."CursosAlumnos" DROP CONSTRAINT "CursosAlumnos_idAlumno_fkey";
       public          postgres    false    211    3193    214                       2606    8158516 (   CursosAlumnos CursosAlumnos_idCurso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CursosAlumnos"
    ADD CONSTRAINT "CursosAlumnos_idCurso_fkey" FOREIGN KEY ("idCurso") REFERENCES public."Cursos"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public."CursosAlumnos" DROP CONSTRAINT "CursosAlumnos_idCurso_fkey";
       public          postgres    false    214    3195    213               �   x�3LIN4�t�I�J�K)��tJ-�,.I���L��9�&f��%��r�%���G�{gf{gU��8y�9;F��뇤Z�{�FZdEU%9e�G�:��%�s�p�X��)Y�Y��������� ;�.`         �  x��V�n�8>+O��^Y�d�8���l�m��u�\�e3�D���:o����G���P�m��A/9�|��̈́���jU�L�P�$'JYUC�8���^�x݀pC$)&���@��7CZ^���1Ӣ���S�܀�JJ�C"j�u	���7��1GAp'jca�Tp��)��m�6RAa#,.�AD�(�Y��>7�v��f��S�b��|��(:J£p4�#Js�Ư.D^/�M��|B�[)������;���)0�jc�v�R<�O�!��ZI5ExY��i�h�a�1� �[iT�J��L^��;$�*�����n4:$������C��k�{��x�|>��y�m����L�0��O?���.�bw"��,��b�k&�k+J�#I~!��f���"Y<9̽3U���d�(��!bc����La,���g��̸�P��0��6��f���2mM*Ӎ��
�c_-ZUb�+�a����}������w��Tx�����|.�w�.?`���#�1^{�@@�rg��+���[ۜ桧J���ȃ�^DáK��
�\��3[I��g��Fv�X~�	8]��9�M��|\ؙ����d�q2޸�'��[�����=V~���_�qy�E�$h:�0�4�� ����َ��U�r��^8p�|.[���C�T��v�wE�Z�W���������"	JL�ϕ�[���oLTj ���j�_�{�lm�9b��!��|�jQ@���b^~���������܂q��'V��Dwwl6E�#:�G�4gD�|�f4�ޓ_�&�GO�VZ��B��9�_�|���Q��{2&�1�(�[�ӗp�1B?-K]��r#�����>�m@�L�����p��KSJ�S��$���ᨤ,.'%O�,:�E%���<b�0��tX�A�gC���2*q��Z�E�(S�&Y�&)�h:Lӈ�qZ��e�����l�v��t��QG1��8��\O�m׊O���l�;�vgk����]\�s�{W�����[�ڕ�=��)ZW�̖`�fPs��0�s�b�_����鉺n�׻��=7�E�2>FE�G<ʢlӬ�'���&��%��57L�s}�̔U7�)�ˈ�g���L!x��p�W�m!��D�[���FdAL����vR_)��y�:����F��kB�
�%JN��؟�M�/��9ٸ�5��͊^t>l��SD��	�g��q�z�.^`v��J�f+[~�Ԛ�����U�/�F�g�+8�o�/�\����6�2��	���\vv��I�5���wP��9R�.�_���L�=�.N߼q�&ʸV�ºn%�SCLp�o���E�J;ǮލAZE�G�5���bV�������}���67<���`�7���5�{ppp�	�w�         1   x�3LIN4�4�4202�5��50S02�25�2�г0��Hq��qqq �,�            x������ � �            x������ � �     