PGDMP         /                {            consolidacion_m7    14.8    14.8 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    279513    consolidacion_m7    DATABASE     l   CREATE DATABASE consolidacion_m7 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
     DROP DATABASE consolidacion_m7;
                postgres    false            �            1259    4820965    Alumnos    TABLE     �  CREATE TABLE public."Alumnos" (
    id character varying(5) NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    admin boolean DEFAULT false NOT NULL
);
    DROP TABLE public."Alumnos";
       public         heap    postgres    false            �            1259    4820973    Cursos    TABLE     C  CREATE TABLE public."Cursos" (
    id integer NOT NULL,
    nombre character varying(200) NOT NULL,
    cue integer NOT NULL,
    descripcion character varying(200) NOT NULL,
    imagen character varying(500) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Cursos";
       public         heap    postgres    false            �            1259    4820981    CursosAlumnos    TABLE     �   CREATE TABLE public."CursosAlumnos" (
    "idAlumno" character varying(5) NOT NULL,
    "idCurso" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."CursosAlumnos";
       public         heap    postgres    false            �            1259    4820972    Cursos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Cursos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Cursos_id_seq";
       public          postgres    false    211            �           0    0    Cursos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Cursos_id_seq" OWNED BY public."Cursos".id;
          public          postgres    false    210            e           2604    4820976 	   Cursos id    DEFAULT     j   ALTER TABLE ONLY public."Cursos" ALTER COLUMN id SET DEFAULT nextval('public."Cursos_id_seq"'::regclass);
 :   ALTER TABLE public."Cursos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �          0    4820965    Alumnos 
   TABLE DATA           k   COPY public."Alumnos" (id, nombre, apellido, email, password, "createdAt", "updatedAt", admin) FROM stdin;
    public          postgres    false    209   �      �          0    4820973    Cursos 
   TABLE DATA           b   COPY public."Cursos" (id, nombre, cue, descripcion, imagen, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    211   ��      �          0    4820981    CursosAlumnos 
   TABLE DATA           Z   COPY public."CursosAlumnos" ("idAlumno", "idCurso", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    212   l�      �           0    0    Cursos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Cursos_id_seq"', 14, true);
          public          postgres    false    210            g           2606    7835428    Alumnos Alumnos_email_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key" UNIQUE (email);
 G   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key";
       public            postgres    false    209            i           2606    7835430    Alumnos Alumnos_email_key1 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1" UNIQUE (email);
 H   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1";
       public            postgres    false    209            k           2606    7832810    Alumnos Alumnos_email_key10 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key10" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key10";
       public            postgres    false    209            m           2606    7833802    Alumnos Alumnos_email_key100 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key100" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key100";
       public            postgres    false    209            o           2606    7834128    Alumnos Alumnos_email_key1000 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1000" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1000";
       public            postgres    false    209            q           2606    7834130    Alumnos Alumnos_email_key1001 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1001" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1001";
       public            postgres    false    209            s           2606    7834132    Alumnos Alumnos_email_key1002 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1002" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1002";
       public            postgres    false    209            u           2606    7833198    Alumnos Alumnos_email_key1003 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1003" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1003";
       public            postgres    false    209            w           2606    7834134    Alumnos Alumnos_email_key1004 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1004" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1004";
       public            postgres    false    209            y           2606    7833196    Alumnos Alumnos_email_key1005 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1005" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1005";
       public            postgres    false    209            {           2606    7834136    Alumnos Alumnos_email_key1006 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1006" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1006";
       public            postgres    false    209            }           2606    7834138    Alumnos Alumnos_email_key1007 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1007" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1007";
       public            postgres    false    209                       2606    7834146    Alumnos Alumnos_email_key1008 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1008" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1008";
       public            postgres    false    209            �           2606    7834140    Alumnos Alumnos_email_key1009 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1009" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1009";
       public            postgres    false    209            �           2606    7833820    Alumnos Alumnos_email_key101 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key101" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key101";
       public            postgres    false    209            �           2606    7834142    Alumnos Alumnos_email_key1010 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1010" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1010";
       public            postgres    false    209            �           2606    7834144    Alumnos Alumnos_email_key1011 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1011" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1011";
       public            postgres    false    209            �           2606    7834836    Alumnos Alumnos_email_key1012 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1012" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1012";
       public            postgres    false    209            �           2606    7833312    Alumnos Alumnos_email_key1013 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1013" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1013";
       public            postgres    false    209            �           2606    7834834    Alumnos Alumnos_email_key1014 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1014" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1014";
       public            postgres    false    209            �           2606    7832896    Alumnos Alumnos_email_key1015 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1015" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1015";
       public            postgres    false    209            �           2606    7832898    Alumnos Alumnos_email_key1016 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1016" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1016";
       public            postgres    false    209            �           2606    7832906    Alumnos Alumnos_email_key1017 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1017" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1017";
       public            postgres    false    209            �           2606    7832900    Alumnos Alumnos_email_key1018 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1018" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1018";
       public            postgres    false    209            �           2606    7832902    Alumnos Alumnos_email_key1019 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1019" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1019";
       public            postgres    false    209            �           2606    7835622    Alumnos Alumnos_email_key102 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key102" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key102";
       public            postgres    false    209            �           2606    7832904    Alumnos Alumnos_email_key1020 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1020" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1020";
       public            postgres    false    209            �           2606    7833150    Alumnos Alumnos_email_key1021 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1021" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1021";
       public            postgres    false    209            �           2606    7833152    Alumnos Alumnos_email_key1022 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1022" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1022";
       public            postgres    false    209            �           2606    7833154    Alumnos Alumnos_email_key1023 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1023" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1023";
       public            postgres    false    209            �           2606    7833156    Alumnos Alumnos_email_key1024 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1024" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1024";
       public            postgres    false    209            �           2606    7836072    Alumnos Alumnos_email_key1025 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1025" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1025";
       public            postgres    false    209            �           2606    7833158    Alumnos Alumnos_email_key1026 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1026" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1026";
       public            postgres    false    209            �           2606    7833160    Alumnos Alumnos_email_key1027 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1027" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1027";
       public            postgres    false    209            �           2606    7833578    Alumnos Alumnos_email_key1028 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1028" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1028";
       public            postgres    false    209            �           2606    7833580    Alumnos Alumnos_email_key1029 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1029" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1029";
       public            postgres    false    209            �           2606    7835624    Alumnos Alumnos_email_key103 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key103" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key103";
       public            postgres    false    209            �           2606    7833582    Alumnos Alumnos_email_key1030 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1030" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1030";
       public            postgres    false    209            �           2606    7834656    Alumnos Alumnos_email_key1031 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1031" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1031";
       public            postgres    false    209            �           2606    7834658    Alumnos Alumnos_email_key1032 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1032" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1032";
       public            postgres    false    209            �           2606    7834660    Alumnos Alumnos_email_key1033 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1033" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1033";
       public            postgres    false    209            �           2606    7834662    Alumnos Alumnos_email_key1034 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1034" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1034";
       public            postgres    false    209            �           2606    7834664    Alumnos Alumnos_email_key1035 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1035" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1035";
       public            postgres    false    209            �           2606    7834666    Alumnos Alumnos_email_key1036 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1036" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1036";
       public            postgres    false    209            �           2606    7834668    Alumnos Alumnos_email_key1037 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1037" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1037";
       public            postgres    false    209            �           2606    7833188    Alumnos Alumnos_email_key1038 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1038" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1038";
       public            postgres    false    209            �           2606    7834670    Alumnos Alumnos_email_key1039 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1039" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1039";
       public            postgres    false    209            �           2606    7835626    Alumnos Alumnos_email_key104 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key104" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key104";
       public            postgres    false    209            �           2606    7834672    Alumnos Alumnos_email_key1040 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1040" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1040";
       public            postgres    false    209            �           2606    7833186    Alumnos Alumnos_email_key1041 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1041" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1041";
       public            postgres    false    209            �           2606    7834674    Alumnos Alumnos_email_key1042 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1042" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1042";
       public            postgres    false    209            �           2606    7834676    Alumnos Alumnos_email_key1043 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1043" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1043";
       public            postgres    false    209            �           2606    7834878    Alumnos Alumnos_email_key1044 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1044" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1044";
       public            postgres    false    209            �           2606    7833584    Alumnos Alumnos_email_key1045 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1045" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1045";
       public            postgres    false    209            �           2606    7834880    Alumnos Alumnos_email_key1046 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1046" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1046";
       public            postgres    false    209            �           2606    7834882    Alumnos Alumnos_email_key1047 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1047" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1047";
       public            postgres    false    209            �           2606    7835086    Alumnos Alumnos_email_key1048 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1048" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1048";
       public            postgres    false    209            �           2606    7835088    Alumnos Alumnos_email_key1049 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1049" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1049";
       public            postgres    false    209            �           2606    7833258    Alumnos Alumnos_email_key105 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key105" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key105";
       public            postgres    false    209            �           2606    7835090    Alumnos Alumnos_email_key1050 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1050" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1050";
       public            postgres    false    209            �           2606    7835148    Alumnos Alumnos_email_key1051 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1051" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1051";
       public            postgres    false    209            �           2606    7835092    Alumnos Alumnos_email_key1052 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1052" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1052";
       public            postgres    false    209            �           2606    7835094    Alumnos Alumnos_email_key1053 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1053" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1053";
       public            postgres    false    209            �           2606    7835146    Alumnos Alumnos_email_key1054 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1054" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1054";
       public            postgres    false    209            �           2606    7835564    Alumnos Alumnos_email_key1055 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1055" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1055";
       public            postgres    false    209            �           2606    7835144    Alumnos Alumnos_email_key1056 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1056" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1056";
       public            postgres    false    209            �           2606    7835566    Alumnos Alumnos_email_key1057 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1057" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1057";
       public            postgres    false    209            �           2606    7835568    Alumnos Alumnos_email_key1058 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1058" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1058";
       public            postgres    false    209            �           2606    7835570    Alumnos Alumnos_email_key1059 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1059" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1059";
       public            postgres    false    209            �           2606    7833114    Alumnos Alumnos_email_key106 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key106" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key106";
       public            postgres    false    209            �           2606    7835572    Alumnos Alumnos_email_key1060 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1060" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1060";
       public            postgres    false    209            �           2606    7835574    Alumnos Alumnos_email_key1061 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1061" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1061";
       public            postgres    false    209            �           2606    7835576    Alumnos Alumnos_email_key1062 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1062" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1062";
       public            postgres    false    209            �           2606    7835578    Alumnos Alumnos_email_key1063 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1063" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1063";
       public            postgres    false    209            �           2606    7833296    Alumnos Alumnos_email_key1064 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1064" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1064";
       public            postgres    false    209            �           2606    7835580    Alumnos Alumnos_email_key1065 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1065" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1065";
       public            postgres    false    209            �           2606    7835582    Alumnos Alumnos_email_key1066 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1066" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1066";
       public            postgres    false    209                       2606    7833294    Alumnos Alumnos_email_key1067 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1067" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1067";
       public            postgres    false    209                       2606    7835758    Alumnos Alumnos_email_key1068 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1068" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1068";
       public            postgres    false    209                       2606    7835760    Alumnos Alumnos_email_key1069 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1069" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1069";
       public            postgres    false    209                       2606    7833116    Alumnos Alumnos_email_key107 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key107" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key107";
       public            postgres    false    209            	           2606    7833486    Alumnos Alumnos_email_key1070 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1070" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1070";
       public            postgres    false    209                       2606    7834830    Alumnos Alumnos_email_key1071 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1071" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1071";
       public            postgres    false    209                       2606    7833488    Alumnos Alumnos_email_key1072 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1072" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1072";
       public            postgres    false    209                       2606    7834828    Alumnos Alumnos_email_key1073 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1073" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1073";
       public            postgres    false    209                       2606    7833490    Alumnos Alumnos_email_key1074 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1074" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1074";
       public            postgres    false    209                       2606    7833492    Alumnos Alumnos_email_key1075 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1075" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1075";
       public            postgres    false    209                       2606    7833494    Alumnos Alumnos_email_key1076 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1076" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1076";
       public            postgres    false    209                       2606    7833496    Alumnos Alumnos_email_key1077 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1077" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1077";
       public            postgres    false    209                       2606    7833498    Alumnos Alumnos_email_key1078 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1078" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1078";
       public            postgres    false    209                       2606    7833710    Alumnos Alumnos_email_key1079 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1079" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1079";
       public            postgres    false    209                       2606    7833118    Alumnos Alumnos_email_key108 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key108" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key108";
       public            postgres    false    209                       2606    7833500    Alumnos Alumnos_email_key1080 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1080" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1080";
       public            postgres    false    209            !           2606    7833502    Alumnos Alumnos_email_key1081 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1081" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1081";
       public            postgres    false    209            #           2606    7833504    Alumnos Alumnos_email_key1082 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1082" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1082";
       public            postgres    false    209            %           2606    7833708    Alumnos Alumnos_email_key1083 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1083" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1083";
       public            postgres    false    209            '           2606    7834164    Alumnos Alumnos_email_key1084 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1084" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1084";
       public            postgres    false    209            )           2606    7832756    Alumnos Alumnos_email_key1085 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1085" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1085";
       public            postgres    false    209            +           2606    7832758    Alumnos Alumnos_email_key1086 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1086" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1086";
       public            postgres    false    209            -           2606    7835292    Alumnos Alumnos_email_key1087 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1087" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1087";
       public            postgres    false    209            /           2606    7835294    Alumnos Alumnos_email_key1088 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1088" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1088";
       public            postgres    false    209            1           2606    7833442    Alumnos Alumnos_email_key1089 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1089" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1089";
       public            postgres    false    209            3           2606    7835072    Alumnos Alumnos_email_key109 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key109" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key109";
       public            postgres    false    209            5           2606    7835296    Alumnos Alumnos_email_key1090 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1090" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1090";
       public            postgres    false    209            7           2606    7835298    Alumnos Alumnos_email_key1091 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1091" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1091";
       public            postgres    false    209            9           2606    7835300    Alumnos Alumnos_email_key1092 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1092" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1092";
       public            postgres    false    209            ;           2606    7835302    Alumnos Alumnos_email_key1093 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1093" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1093";
       public            postgres    false    209            =           2606    7835304    Alumnos Alumnos_email_key1094 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1094" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1094";
       public            postgres    false    209            ?           2606    7835306    Alumnos Alumnos_email_key1095 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1095" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1095";
       public            postgres    false    209            A           2606    7835084    Alumnos Alumnos_email_key1096 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1096" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1096";
       public            postgres    false    209            C           2606    7835308    Alumnos Alumnos_email_key1097 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1097" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1097";
       public            postgres    false    209            E           2606    7835310    Alumnos Alumnos_email_key1098 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1098" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1098";
       public            postgres    false    209            G           2606    7835082    Alumnos Alumnos_email_key1099 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1099" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1099";
       public            postgres    false    209            I           2606    7832812    Alumnos Alumnos_email_key11 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key11" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key11";
       public            postgres    false    209            K           2606    7835064    Alumnos Alumnos_email_key110 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key110" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key110";
       public            postgres    false    209            M           2606    7835312    Alumnos Alumnos_email_key1100 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1100" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1100";
       public            postgres    false    209            O           2606    7835080    Alumnos Alumnos_email_key1101 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1101" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1101";
       public            postgres    false    209            Q           2606    7835314    Alumnos Alumnos_email_key1102 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1102" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1102";
       public            postgres    false    209            S           2606    7835316    Alumnos Alumnos_email_key1103 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1103" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1103";
       public            postgres    false    209            U           2606    7835318    Alumnos Alumnos_email_key1104 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1104" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1104";
       public            postgres    false    209            W           2606    7835278    Alumnos Alumnos_email_key1105 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1105" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1105";
       public            postgres    false    209            Y           2606    7835320    Alumnos Alumnos_email_key1106 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1106" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1106";
       public            postgres    false    209            [           2606    7835276    Alumnos Alumnos_email_key1107 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1107" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1107";
       public            postgres    false    209            ]           2606    7835322    Alumnos Alumnos_email_key1108 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1108" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1108";
       public            postgres    false    209            _           2606    7835328    Alumnos Alumnos_email_key1109 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1109" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1109";
       public            postgres    false    209            a           2606    7835074    Alumnos Alumnos_email_key111 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key111" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key111";
       public            postgres    false    209            c           2606    7835324    Alumnos Alumnos_email_key1110 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1110" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1110";
       public            postgres    false    209            e           2606    7835326    Alumnos Alumnos_email_key1111 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1111" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1111";
       public            postgres    false    209            g           2606    7834216    Alumnos Alumnos_email_key1112 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1112" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1112";
       public            postgres    false    209            i           2606    7834218    Alumnos Alumnos_email_key1113 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1113" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1113";
       public            postgres    false    209            k           2606    7834220    Alumnos Alumnos_email_key1114 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1114" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1114";
       public            postgres    false    209            m           2606    7834222    Alumnos Alumnos_email_key1115 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1115" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1115";
       public            postgres    false    209            o           2606    7834224    Alumnos Alumnos_email_key1116 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1116" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1116";
       public            postgres    false    209            q           2606    7834226    Alumnos Alumnos_email_key1117 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1117" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1117";
       public            postgres    false    209            s           2606    7834228    Alumnos Alumnos_email_key1118 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1118" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1118";
       public            postgres    false    209            u           2606    7834230    Alumnos Alumnos_email_key1119 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1119" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1119";
       public            postgres    false    209            w           2606    7832886    Alumnos Alumnos_email_key112 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key112" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key112";
       public            postgres    false    209            y           2606    7834232    Alumnos Alumnos_email_key1120 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1120" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1120";
       public            postgres    false    209            {           2606    7835008    Alumnos Alumnos_email_key1121 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1121" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1121";
       public            postgres    false    209            }           2606    7834234    Alumnos Alumnos_email_key1122 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1122" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1122";
       public            postgres    false    209                       2606    7834236    Alumnos Alumnos_email_key1123 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1123" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1123";
       public            postgres    false    209            �           2606    7834238    Alumnos Alumnos_email_key1124 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1124" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1124";
       public            postgres    false    209            �           2606    7835006    Alumnos Alumnos_email_key1125 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1125" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1125";
       public            postgres    false    209            �           2606    7834598    Alumnos Alumnos_email_key1126 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1126" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1126";
       public            postgres    false    209            �           2606    7834600    Alumnos Alumnos_email_key1127 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1127" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1127";
       public            postgres    false    209            �           2606    7834602    Alumnos Alumnos_email_key1128 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1128" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1128";
       public            postgres    false    209            �           2606    7834604    Alumnos Alumnos_email_key1129 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1129" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1129";
       public            postgres    false    209            �           2606    7832888    Alumnos Alumnos_email_key113 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key113" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key113";
       public            postgres    false    209            �           2606    7834606    Alumnos Alumnos_email_key1130 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1130" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1130";
       public            postgres    false    209            �           2606    7834886    Alumnos Alumnos_email_key1131 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1131" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1131";
       public            postgres    false    209            �           2606    7834608    Alumnos Alumnos_email_key1132 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1132" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1132";
       public            postgres    false    209            �           2606    7834610    Alumnos Alumnos_email_key1133 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1133" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1133";
       public            postgres    false    209            �           2606    7834884    Alumnos Alumnos_email_key1134 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1134" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1134";
       public            postgres    false    209            �           2606    7834612    Alumnos Alumnos_email_key1135 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1135" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1135";
       public            postgres    false    209            �           2606    7834614    Alumnos Alumnos_email_key1136 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1136" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1136";
       public            postgres    false    209            �           2606    7834616    Alumnos Alumnos_email_key1137 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1137" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1137";
       public            postgres    false    209            �           2606    7834618    Alumnos Alumnos_email_key1138 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1138" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1138";
       public            postgres    false    209            �           2606    7834620    Alumnos Alumnos_email_key1139 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1139" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1139";
       public            postgres    false    209            �           2606    7832890    Alumnos Alumnos_email_key114 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key114" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key114";
       public            postgres    false    209            �           2606    7834622    Alumnos Alumnos_email_key1140 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1140" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1140";
       public            postgres    false    209            �           2606    7832762    Alumnos Alumnos_email_key1141 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1141" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1141";
       public            postgres    false    209            �           2606    7834624    Alumnos Alumnos_email_key1142 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1142" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1142";
       public            postgres    false    209            �           2606    7834626    Alumnos Alumnos_email_key1143 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1143" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1143";
       public            postgres    false    209            �           2606    7832760    Alumnos Alumnos_email_key1144 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1144" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1144";
       public            postgres    false    209            �           2606    7834628    Alumnos Alumnos_email_key1145 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1145" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1145";
       public            postgres    false    209            �           2606    7834006    Alumnos Alumnos_email_key1146 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1146" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1146";
       public            postgres    false    209            �           2606    7834008    Alumnos Alumnos_email_key1147 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1147" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1147";
       public            postgres    false    209            �           2606    7834010    Alumnos Alumnos_email_key1148 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1148" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1148";
       public            postgres    false    209            �           2606    7834630    Alumnos Alumnos_email_key1149 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1149" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1149";
       public            postgres    false    209            �           2606    7833620    Alumnos Alumnos_email_key115 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key115" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key115";
       public            postgres    false    209            �           2606    7834012    Alumnos Alumnos_email_key1150 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1150" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1150";
       public            postgres    false    209            �           2606    7834014    Alumnos Alumnos_email_key1151 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1151" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1151";
       public            postgres    false    209            �           2606    7834016    Alumnos Alumnos_email_key1152 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1152" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1152";
       public            postgres    false    209            �           2606    7834018    Alumnos Alumnos_email_key1153 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1153" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1153";
       public            postgres    false    209            �           2606    7834020    Alumnos Alumnos_email_key1154 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1154" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1154";
       public            postgres    false    209            �           2606    7834382    Alumnos Alumnos_email_key1155 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1155" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1155";
       public            postgres    false    209            �           2606    7834384    Alumnos Alumnos_email_key1156 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1156" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1156";
       public            postgres    false    209            �           2606    7833338    Alumnos Alumnos_email_key1157 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1157" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1157";
       public            postgres    false    209            �           2606    7834386    Alumnos Alumnos_email_key1158 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1158" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1158";
       public            postgres    false    209            �           2606    7834388    Alumnos Alumnos_email_key1159 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1159" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1159";
       public            postgres    false    209            �           2606    7833622    Alumnos Alumnos_email_key116 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key116" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key116";
       public            postgres    false    209            �           2606    7834390    Alumnos Alumnos_email_key1160 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1160" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1160";
       public            postgres    false    209            �           2606    7834392    Alumnos Alumnos_email_key1161 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1161" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1161";
       public            postgres    false    209            �           2606    7833336    Alumnos Alumnos_email_key1162 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1162" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1162";
       public            postgres    false    209            �           2606    7834394    Alumnos Alumnos_email_key1163 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1163" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1163";
       public            postgres    false    209            �           2606    7834396    Alumnos Alumnos_email_key1164 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1164" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1164";
       public            postgres    false    209            �           2606    7834398    Alumnos Alumnos_email_key1165 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1165" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1165";
       public            postgres    false    209            �           2606    7834400    Alumnos Alumnos_email_key1166 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1166" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1166";
       public            postgres    false    209            �           2606    7834402    Alumnos Alumnos_email_key1167 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1167" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1167";
       public            postgres    false    209            �           2606    7834404    Alumnos Alumnos_email_key1168 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1168" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1168";
       public            postgres    false    209            �           2606    7834406    Alumnos Alumnos_email_key1169 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1169" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1169";
       public            postgres    false    209            �           2606    7835968    Alumnos Alumnos_email_key117 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key117" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key117";
       public            postgres    false    209            �           2606    7834408    Alumnos Alumnos_email_key1170 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1170" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1170";
       public            postgres    false    209            �           2606    7834410    Alumnos Alumnos_email_key1171 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1171" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1171";
       public            postgres    false    209            �           2606    7833316    Alumnos Alumnos_email_key1172 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1172" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1172";
       public            postgres    false    209            �           2606    7834412    Alumnos Alumnos_email_key1173 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1173" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1173";
       public            postgres    false    209            �           2606    7834414    Alumnos Alumnos_email_key1174 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1174" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1174";
       public            postgres    false    209            �           2606    7833314    Alumnos Alumnos_email_key1175 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1175" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1175";
       public            postgres    false    209            �           2606    7834416    Alumnos Alumnos_email_key1176 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1176" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1176";
       public            postgres    false    209            �           2606    7834418    Alumnos Alumnos_email_key1177 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1177" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1177";
       public            postgres    false    209            �           2606    7835024    Alumnos Alumnos_email_key1178 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1178" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1178";
       public            postgres    false    209            �           2606    7835026    Alumnos Alumnos_email_key1179 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1179" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1179";
       public            postgres    false    209            �           2606    7835970    Alumnos Alumnos_email_key118 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key118" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key118";
       public            postgres    false    209            �           2606    7835028    Alumnos Alumnos_email_key1180 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1180" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1180";
       public            postgres    false    209            �           2606    7835030    Alumnos Alumnos_email_key1181 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1181" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1181";
       public            postgres    false    209                       2606    7834270    Alumnos Alumnos_email_key1182 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1182" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1182";
       public            postgres    false    209                       2606    7835032    Alumnos Alumnos_email_key1183 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1183" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1183";
       public            postgres    false    209                       2606    7834268    Alumnos Alumnos_email_key1184 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1184" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1184";
       public            postgres    false    209                       2606    7834266    Alumnos Alumnos_email_key1185 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1185" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1185";
       public            postgres    false    209            	           2606    7835034    Alumnos Alumnos_email_key1186 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1186" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1186";
       public            postgres    false    209                       2606    7835036    Alumnos Alumnos_email_key1187 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1187" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1187";
       public            postgres    false    209                       2606    7835038    Alumnos Alumnos_email_key1188 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1188" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1188";
       public            postgres    false    209                       2606    7835040    Alumnos Alumnos_email_key1189 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1189" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1189";
       public            postgres    false    209                       2606    7832892    Alumnos Alumnos_email_key119 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key119" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key119";
       public            postgres    false    209                       2606    7835042    Alumnos Alumnos_email_key1190 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1190" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1190";
       public            postgres    false    209                       2606    7835844    Alumnos Alumnos_email_key1191 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1191" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1191";
       public            postgres    false    209                       2606    7835846    Alumnos Alumnos_email_key1192 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1192" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1192";
       public            postgres    false    209                       2606    7835848    Alumnos Alumnos_email_key1193 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1193" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1193";
       public            postgres    false    209                       2606    7835850    Alumnos Alumnos_email_key1194 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1194" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1194";
       public            postgres    false    209                       2606    7834264    Alumnos Alumnos_email_key1195 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1195" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1195";
       public            postgres    false    209                       2606    7835852    Alumnos Alumnos_email_key1196 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1196" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1196";
       public            postgres    false    209            !           2606    7834262    Alumnos Alumnos_email_key1197 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1197" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1197";
       public            postgres    false    209            #           2606    7835854    Alumnos Alumnos_email_key1198 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1198" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1198";
       public            postgres    false    209            %           2606    7835856    Alumnos Alumnos_email_key1199 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1199" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1199";
       public            postgres    false    209            '           2606    7833120    Alumnos Alumnos_email_key12 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key12" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key12";
       public            postgres    false    209            )           2606    7834642    Alumnos Alumnos_email_key120 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key120" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key120";
       public            postgres    false    209            +           2606    7833060    Alumnos Alumnos_email_key1200 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1200" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1200";
       public            postgres    false    209            -           2606    7835858    Alumnos Alumnos_email_key1201 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1201" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1201";
       public            postgres    false    209            /           2606    7833058    Alumnos Alumnos_email_key1202 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1202" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1202";
       public            postgres    false    209            1           2606    7834178    Alumnos Alumnos_email_key1203 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1203" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1203";
       public            postgres    false    209            3           2606    7834180    Alumnos Alumnos_email_key1204 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1204" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1204";
       public            postgres    false    209            5           2606    7835044    Alumnos Alumnos_email_key1205 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1205" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1205";
       public            postgres    false    209            7           2606    7834182    Alumnos Alumnos_email_key1206 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1206" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1206";
       public            postgres    false    209            9           2606    7834184    Alumnos Alumnos_email_key1207 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1207" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1207";
       public            postgres    false    209            ;           2606    7834186    Alumnos Alumnos_email_key1208 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1208" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1208";
       public            postgres    false    209            =           2606    7834188    Alumnos Alumnos_email_key1209 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1209" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1209";
       public            postgres    false    209            ?           2606    7832894    Alumnos Alumnos_email_key121 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key121" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key121";
       public            postgres    false    209            A           2606    7834190    Alumnos Alumnos_email_key1210 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1210" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1210";
       public            postgres    false    209            C           2606    7834192    Alumnos Alumnos_email_key1211 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1211" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1211";
       public            postgres    false    209            E           2606    7835948    Alumnos Alumnos_email_key1212 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1212" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1212";
       public            postgres    false    209            G           2606    7834194    Alumnos Alumnos_email_key1213 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1213" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1213";
       public            postgres    false    209            I           2606    7834196    Alumnos Alumnos_email_key1214 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1214" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1214";
       public            postgres    false    209            K           2606    7834198    Alumnos Alumnos_email_key1215 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1215" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1215";
       public            postgres    false    209            M           2606    7835940    Alumnos Alumnos_email_key1216 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1216" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1216";
       public            postgres    false    209            O           2606    7835942    Alumnos Alumnos_email_key1217 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1217" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1217";
       public            postgres    false    209            Q           2606    7835944    Alumnos Alumnos_email_key1218 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1218" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1218";
       public            postgres    false    209            S           2606    7835946    Alumnos Alumnos_email_key1219 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1219" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1219";
       public            postgres    false    209            U           2606    7834278    Alumnos Alumnos_email_key122 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key122" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key122";
       public            postgres    false    209            W           2606    7832992    Alumnos Alumnos_email_key1220 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1220" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1220";
       public            postgres    false    209            Y           2606    7832994    Alumnos Alumnos_email_key1221 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1221" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1221";
       public            postgres    false    209            [           2606    7832996    Alumnos Alumnos_email_key1222 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1222" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1222";
       public            postgres    false    209            ]           2606    7833018    Alumnos Alumnos_email_key1223 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1223" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1223";
       public            postgres    false    209            _           2606    7832998    Alumnos Alumnos_email_key1224 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1224" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1224";
       public            postgres    false    209            a           2606    7833000    Alumnos Alumnos_email_key1225 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1225" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1225";
       public            postgres    false    209            c           2606    7833002    Alumnos Alumnos_email_key1226 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1226" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1226";
       public            postgres    false    209            e           2606    7833004    Alumnos Alumnos_email_key1227 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1227" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1227";
       public            postgres    false    209            g           2606    7833006    Alumnos Alumnos_email_key1228 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1228" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1228";
       public            postgres    false    209            i           2606    7833008    Alumnos Alumnos_email_key1229 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1229" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1229";
       public            postgres    false    209            k           2606    7832804    Alumnos Alumnos_email_key123 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key123" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key123";
       public            postgres    false    209            m           2606    7833010    Alumnos Alumnos_email_key1230 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1230" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1230";
       public            postgres    false    209            o           2606    7833012    Alumnos Alumnos_email_key1231 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1231" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1231";
       public            postgres    false    209            q           2606    7833014    Alumnos Alumnos_email_key1232 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1232" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1232";
       public            postgres    false    209            s           2606    7833016    Alumnos Alumnos_email_key1233 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1233" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1233";
       public            postgres    false    209            u           2606    7834104    Alumnos Alumnos_email_key1234 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1234" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1234";
       public            postgres    false    209            w           2606    7834106    Alumnos Alumnos_email_key1235 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1235" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1235";
       public            postgres    false    209            y           2606    7836090    Alumnos Alumnos_email_key1236 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1236" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1236";
       public            postgres    false    209            {           2606    7835352    Alumnos Alumnos_email_key1237 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1237" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1237";
       public            postgres    false    209            }           2606    7835354    Alumnos Alumnos_email_key1238 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1238" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1238";
       public            postgres    false    209                       2606    7835356    Alumnos Alumnos_email_key1239 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1239" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1239";
       public            postgres    false    209            �           2606    7832806    Alumnos Alumnos_email_key124 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key124" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key124";
       public            postgres    false    209            �           2606    7835358    Alumnos Alumnos_email_key1240 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1240" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1240";
       public            postgres    false    209            �           2606    7836088    Alumnos Alumnos_email_key1241 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1241" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1241";
       public            postgres    false    209            �           2606    7835360    Alumnos Alumnos_email_key1242 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1242" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1242";
       public            postgres    false    209            �           2606    7835362    Alumnos Alumnos_email_key1243 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1243" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1243";
       public            postgres    false    209            �           2606    7836086    Alumnos Alumnos_email_key1244 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1244" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1244";
       public            postgres    false    209            �           2606    7835364    Alumnos Alumnos_email_key1245 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1245" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1245";
       public            postgres    false    209            �           2606    7836084    Alumnos Alumnos_email_key1246 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1246" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1246";
       public            postgres    false    209            �           2606    7835366    Alumnos Alumnos_email_key1247 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1247" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1247";
       public            postgres    false    209            �           2606    7835368    Alumnos Alumnos_email_key1248 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1248" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1248";
       public            postgres    false    209            �           2606    7834162    Alumnos Alumnos_email_key1249 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1249" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1249";
       public            postgres    false    209            �           2606    7832766    Alumnos Alumnos_email_key125 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key125" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key125";
       public            postgres    false    209            �           2606    7835370    Alumnos Alumnos_email_key1250 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1250" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1250";
       public            postgres    false    209            �           2606    7835372    Alumnos Alumnos_email_key1251 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1251" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1251";
       public            postgres    false    209            �           2606    7835380    Alumnos Alumnos_email_key1252 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1252" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1252";
       public            postgres    false    209            �           2606    7835374    Alumnos Alumnos_email_key1253 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1253" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1253";
       public            postgres    false    209            �           2606    7835376    Alumnos Alumnos_email_key1254 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1254" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1254";
       public            postgres    false    209            �           2606    7835378    Alumnos Alumnos_email_key1255 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1255" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1255";
       public            postgres    false    209            �           2606    7835678    Alumnos Alumnos_email_key1256 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1256" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1256";
       public            postgres    false    209            �           2606    7835680    Alumnos Alumnos_email_key1257 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1257" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1257";
       public            postgres    false    209            �           2606    7832802    Alumnos Alumnos_email_key1258 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1258" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1258";
       public            postgres    false    209            �           2606    7835682    Alumnos Alumnos_email_key1259 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1259" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1259";
       public            postgres    false    209            �           2606    7834632    Alumnos Alumnos_email_key126 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key126" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key126";
       public            postgres    false    209            �           2606    7835684    Alumnos Alumnos_email_key1260 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1260" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1260";
       public            postgres    false    209            �           2606    7835686    Alumnos Alumnos_email_key1261 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1261" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1261";
       public            postgres    false    209            �           2606    7832782    Alumnos Alumnos_email_key1262 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1262" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1262";
       public            postgres    false    209            �           2606    7835688    Alumnos Alumnos_email_key1263 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1263" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1263";
       public            postgres    false    209            �           2606    7835690    Alumnos Alumnos_email_key1264 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1264" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1264";
       public            postgres    false    209            �           2606    7832780    Alumnos Alumnos_email_key1265 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1265" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1265";
       public            postgres    false    209            �           2606    7835692    Alumnos Alumnos_email_key1266 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1266" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1266";
       public            postgres    false    209            �           2606    7835694    Alumnos Alumnos_email_key1267 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1267" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1267";
       public            postgres    false    209            �           2606    7834242    Alumnos Alumnos_email_key1268 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1268" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1268";
       public            postgres    false    209            �           2606    7835696    Alumnos Alumnos_email_key1269 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1269" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1269";
       public            postgres    false    209            �           2606    7834634    Alumnos Alumnos_email_key127 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key127" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key127";
       public            postgres    false    209            �           2606    7834240    Alumnos Alumnos_email_key1270 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1270" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1270";
       public            postgres    false    209            �           2606    7835100    Alumnos Alumnos_email_key1271 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1271" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1271";
       public            postgres    false    209            �           2606    7835102    Alumnos Alumnos_email_key1272 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1272" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1272";
       public            postgres    false    209            �           2606    7835104    Alumnos Alumnos_email_key1273 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1273" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1273";
       public            postgres    false    209            �           2606    7836056    Alumnos Alumnos_email_key1274 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1274" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1274";
       public            postgres    false    209            �           2606    7835106    Alumnos Alumnos_email_key1275 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1275" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1275";
       public            postgres    false    209            �           2606    7835108    Alumnos Alumnos_email_key1276 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1276" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1276";
       public            postgres    false    209            �           2606    7835110    Alumnos Alumnos_email_key1277 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1277" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1277";
       public            postgres    false    209            �           2606    7835112    Alumnos Alumnos_email_key1278 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1278" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1278";
       public            postgres    false    209            �           2606    7835114    Alumnos Alumnos_email_key1279 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1279" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1279";
       public            postgres    false    209            �           2606    7834636    Alumnos Alumnos_email_key128 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key128" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key128";
       public            postgres    false    209            �           2606    7835126    Alumnos Alumnos_email_key1280 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1280" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1280";
       public            postgres    false    209            �           2606    7835116    Alumnos Alumnos_email_key1281 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1281" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1281";
       public            postgres    false    209            �           2606    7835118    Alumnos Alumnos_email_key1282 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1282" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1282";
       public            postgres    false    209            �           2606    7835120    Alumnos Alumnos_email_key1283 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1283" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1283";
       public            postgres    false    209            �           2606    7835122    Alumnos Alumnos_email_key1284 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1284" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1284";
       public            postgres    false    209            �           2606    7835124    Alumnos Alumnos_email_key1285 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1285" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1285";
       public            postgres    false    209            �           2606    7833484    Alumnos Alumnos_email_key1286 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1286" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1286";
       public            postgres    false    209            �           2606    7835762    Alumnos Alumnos_email_key1287 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1287" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1287";
       public            postgres    false    209            �           2606    7835764    Alumnos Alumnos_email_key1288 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1288" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1288";
       public            postgres    false    209            �           2606    7835766    Alumnos Alumnos_email_key1289 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1289" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1289";
       public            postgres    false    209            �           2606    7834638    Alumnos Alumnos_email_key129 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key129" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key129";
       public            postgres    false    209            �           2606    7833482    Alumnos Alumnos_email_key1290 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1290" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1290";
       public            postgres    false    209            �           2606    7835768    Alumnos Alumnos_email_key1291 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1291" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1291";
       public            postgres    false    209            �           2606    7833480    Alumnos Alumnos_email_key1292 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1292" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1292";
       public            postgres    false    209            �           2606    7835770    Alumnos Alumnos_email_key1293 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1293" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1293";
       public            postgres    false    209            �           2606    7835772    Alumnos Alumnos_email_key1294 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1294" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1294";
       public            postgres    false    209            �           2606    7833228    Alumnos Alumnos_email_key1295 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1295" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1295";
       public            postgres    false    209            �           2606    7835774    Alumnos Alumnos_email_key1296 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1296" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1296";
       public            postgres    false    209            �           2606    7835776    Alumnos Alumnos_email_key1297 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1297" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1297";
       public            postgres    false    209                       2606    7835778    Alumnos Alumnos_email_key1298 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1298" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1298";
       public            postgres    false    209                       2606    7835780    Alumnos Alumnos_email_key1299 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1299" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1299";
       public            postgres    false    209                       2606    7835972    Alumnos Alumnos_email_key13 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key13" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key13";
       public            postgres    false    209                       2606    7834640    Alumnos Alumnos_email_key130 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key130" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key130";
       public            postgres    false    209            	           2606    7835782    Alumnos Alumnos_email_key1300 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1300" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1300";
       public            postgres    false    209                       2606    7835784    Alumnos Alumnos_email_key1301 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1301" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1301";
       public            postgres    false    209                       2606    7835786    Alumnos Alumnos_email_key1302 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1302" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1302";
       public            postgres    false    209                       2606    7833136    Alumnos Alumnos_email_key1303 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1303" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1303";
       public            postgres    false    209                       2606    7835788    Alumnos Alumnos_email_key1304 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1304" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1304";
       public            postgres    false    209                       2606    7835790    Alumnos Alumnos_email_key1305 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1305" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1305";
       public            postgres    false    209                       2606    7835792    Alumnos Alumnos_email_key1306 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1306" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1306";
       public            postgres    false    209                       2606    7835794    Alumnos Alumnos_email_key1307 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1307" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1307";
       public            postgres    false    209                       2606    7835796    Alumnos Alumnos_email_key1308 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1308" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1308";
       public            postgres    false    209                       2606    7833134    Alumnos Alumnos_email_key1309 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1309" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1309";
       public            postgres    false    209                       2606    7833714    Alumnos Alumnos_email_key131 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key131" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key131";
       public            postgres    false    209                       2606    7835798    Alumnos Alumnos_email_key1310 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1310" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1310";
       public            postgres    false    209            !           2606    7835800    Alumnos Alumnos_email_key1311 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1311" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1311";
       public            postgres    false    209            #           2606    7833132    Alumnos Alumnos_email_key1312 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1312" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1312";
       public            postgres    false    209            %           2606    7835802    Alumnos Alumnos_email_key1313 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1313" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1313";
       public            postgres    false    209            '           2606    7833130    Alumnos Alumnos_email_key1314 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1314" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1314";
       public            postgres    false    209            )           2606    7835244    Alumnos Alumnos_email_key1315 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1315" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1315";
       public            postgres    false    209            +           2606    7835246    Alumnos Alumnos_email_key1316 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1316" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1316";
       public            postgres    false    209            -           2606    7835248    Alumnos Alumnos_email_key1317 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1317" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1317";
       public            postgres    false    209            /           2606    7835250    Alumnos Alumnos_email_key1318 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1318" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1318";
       public            postgres    false    209            1           2606    7835270    Alumnos Alumnos_email_key1319 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1319" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1319";
       public            postgres    false    209            3           2606    7833666    Alumnos Alumnos_email_key132 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key132" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key132";
       public            postgres    false    209            5           2606    7835268    Alumnos Alumnos_email_key1320 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1320" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1320";
       public            postgres    false    209            7           2606    7835252    Alumnos Alumnos_email_key1321 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1321" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1321";
       public            postgres    false    209            9           2606    7835254    Alumnos Alumnos_email_key1322 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1322" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1322";
       public            postgres    false    209            ;           2606    7835256    Alumnos Alumnos_email_key1323 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1323" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1323";
       public            postgres    false    209            =           2606    7835266    Alumnos Alumnos_email_key1324 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1324" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1324";
       public            postgres    false    209            ?           2606    7835258    Alumnos Alumnos_email_key1325 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1325" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1325";
       public            postgres    false    209            A           2606    7835260    Alumnos Alumnos_email_key1326 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1326" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1326";
       public            postgres    false    209            C           2606    7835262    Alumnos Alumnos_email_key1327 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1327" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1327";
       public            postgres    false    209            E           2606    7835264    Alumnos Alumnos_email_key1328 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1328" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1328";
       public            postgres    false    209            G           2606    7832706    Alumnos Alumnos_email_key1329 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1329" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1329";
       public            postgres    false    209            I           2606    7833668    Alumnos Alumnos_email_key133 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key133" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key133";
       public            postgres    false    209            K           2606    7832744    Alumnos Alumnos_email_key1330 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1330" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1330";
       public            postgres    false    209            M           2606    7832708    Alumnos Alumnos_email_key1331 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1331" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1331";
       public            postgres    false    209            O           2606    7832742    Alumnos Alumnos_email_key1332 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1332" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1332";
       public            postgres    false    209            Q           2606    7832740    Alumnos Alumnos_email_key1333 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1333" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1333";
       public            postgres    false    209            S           2606    7832710    Alumnos Alumnos_email_key1334 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1334" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1334";
       public            postgres    false    209            U           2606    7832712    Alumnos Alumnos_email_key1335 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1335" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1335";
       public            postgres    false    209            W           2606    7832738    Alumnos Alumnos_email_key1336 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1336" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1336";
       public            postgres    false    209            Y           2606    7832736    Alumnos Alumnos_email_key1337 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1337" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1337";
       public            postgres    false    209            [           2606    7832714    Alumnos Alumnos_email_key1338 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1338" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1338";
       public            postgres    false    209            ]           2606    7832716    Alumnos Alumnos_email_key1339 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1339" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1339";
       public            postgres    false    209            _           2606    7833670    Alumnos Alumnos_email_key134 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key134" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key134";
       public            postgres    false    209            a           2606    7832718    Alumnos Alumnos_email_key1340 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1340" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1340";
       public            postgres    false    209            c           2606    7832720    Alumnos Alumnos_email_key1341 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1341" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1341";
       public            postgres    false    209            e           2606    7832722    Alumnos Alumnos_email_key1342 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1342" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1342";
       public            postgres    false    209            g           2606    7832734    Alumnos Alumnos_email_key1343 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1343" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1343";
       public            postgres    false    209            i           2606    7832724    Alumnos Alumnos_email_key1344 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1344" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1344";
       public            postgres    false    209            k           2606    7832726    Alumnos Alumnos_email_key1345 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1345" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1345";
       public            postgres    false    209            m           2606    7832728    Alumnos Alumnos_email_key1346 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1346" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1346";
       public            postgres    false    209            o           2606    7832730    Alumnos Alumnos_email_key1347 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1347" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1347";
       public            postgres    false    209            q           2606    7832732    Alumnos Alumnos_email_key1348 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1348" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1348";
       public            postgres    false    209            s           2606    7834722    Alumnos Alumnos_email_key1349 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1349" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1349";
       public            postgres    false    209            u           2606    7833672    Alumnos Alumnos_email_key135 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key135" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key135";
       public            postgres    false    209            w           2606    7835236    Alumnos Alumnos_email_key1350 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1350" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1350";
       public            postgres    false    209            y           2606    7835238    Alumnos Alumnos_email_key1351 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1351" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1351";
       public            postgres    false    209            {           2606    7835240    Alumnos Alumnos_email_key1352 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1352" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1352";
       public            postgres    false    209            }           2606    7834720    Alumnos Alumnos_email_key1353 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1353" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1353";
       public            postgres    false    209                       2606    7832986    Alumnos Alumnos_email_key1354 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1354" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1354";
       public            postgres    false    209            �           2606    7832984    Alumnos Alumnos_email_key1355 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1355" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1355";
       public            postgres    false    209            �           2606    7832974    Alumnos Alumnos_email_key1356 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1356" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1356";
       public            postgres    false    209            �           2606    7832976    Alumnos Alumnos_email_key1357 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1357" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1357";
       public            postgres    false    209            �           2606    7832982    Alumnos Alumnos_email_key1358 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1358" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1358";
       public            postgres    false    209            �           2606    7832978    Alumnos Alumnos_email_key1359 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1359" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1359";
       public            postgres    false    209            �           2606    7833674    Alumnos Alumnos_email_key136 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key136" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key136";
       public            postgres    false    209            �           2606    7832980    Alumnos Alumnos_email_key1360 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1360" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1360";
       public            postgres    false    209            �           2606    7833036    Alumnos Alumnos_email_key1361 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1361" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1361";
       public            postgres    false    209            �           2606    7834896    Alumnos Alumnos_email_key1362 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1362" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1362";
       public            postgres    false    209            �           2606    7833034    Alumnos Alumnos_email_key1363 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1363" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1363";
       public            postgres    false    209            �           2606    7834898    Alumnos Alumnos_email_key1364 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1364" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1364";
       public            postgres    false    209            �           2606    7833032    Alumnos Alumnos_email_key1365 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1365" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1365";
       public            postgres    false    209            �           2606    7834900    Alumnos Alumnos_email_key1366 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1366" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1366";
       public            postgres    false    209            �           2606    7833470    Alumnos Alumnos_email_key1367 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1367" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1367";
       public            postgres    false    209            �           2606    7834902    Alumnos Alumnos_email_key1368 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1368" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1368";
       public            postgres    false    209            �           2606    7834904    Alumnos Alumnos_email_key1369 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1369" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1369";
       public            postgres    false    209            �           2606    7833824    Alumnos Alumnos_email_key137 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key137" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key137";
       public            postgres    false    209            �           2606    7834906    Alumnos Alumnos_email_key1370 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1370" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1370";
       public            postgres    false    209            �           2606    7834908    Alumnos Alumnos_email_key1371 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1371" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1371";
       public            postgres    false    209            �           2606    7834910    Alumnos Alumnos_email_key1372 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1372" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1372";
       public            postgres    false    209            �           2606    7835344    Alumnos Alumnos_email_key1373 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1373" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1373";
       public            postgres    false    209            �           2606    7835342    Alumnos Alumnos_email_key1374 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1374" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1374";
       public            postgres    false    209            �           2606    7834912    Alumnos Alumnos_email_key1375 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1375" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1375";
       public            postgres    false    209            �           2606    7834914    Alumnos Alumnos_email_key1376 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1376" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1376";
       public            postgres    false    209            �           2606    7834916    Alumnos Alumnos_email_key1377 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1377" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1377";
       public            postgres    false    209            �           2606    7834918    Alumnos Alumnos_email_key1378 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1378" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1378";
       public            postgres    false    209            �           2606    7835698    Alumnos Alumnos_email_key1379 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1379" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1379";
       public            postgres    false    209            �           2606    7835410    Alumnos Alumnos_email_key138 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key138" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key138";
       public            postgres    false    209            �           2606    7835700    Alumnos Alumnos_email_key1380 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1380" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1380";
       public            postgres    false    209            �           2606    7835702    Alumnos Alumnos_email_key1381 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1381" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1381";
       public            postgres    false    209            �           2606    7835340    Alumnos Alumnos_email_key1382 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1382" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1382";
       public            postgres    false    209            �           2606    7835704    Alumnos Alumnos_email_key1383 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1383" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1383";
       public            postgres    false    209            �           2606    7835706    Alumnos Alumnos_email_key1384 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1384" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1384";
       public            postgres    false    209            �           2606    7835708    Alumnos Alumnos_email_key1385 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1385" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1385";
       public            postgres    false    209            �           2606    7835338    Alumnos Alumnos_email_key1386 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1386" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1386";
       public            postgres    false    209            �           2606    7835710    Alumnos Alumnos_email_key1387 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1387" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1387";
       public            postgres    false    209            �           2606    7835712    Alumnos Alumnos_email_key1388 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1388" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1388";
       public            postgres    false    209            �           2606    7835714    Alumnos Alumnos_email_key1389 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1389" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1389";
       public            postgres    false    209            �           2606    7833826    Alumnos Alumnos_email_key139 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key139" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key139";
       public            postgres    false    209            �           2606    7835716    Alumnos Alumnos_email_key1390 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1390" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1390";
       public            postgres    false    209            �           2606    7832848    Alumnos Alumnos_email_key1391 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1391" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1391";
       public            postgres    false    209            �           2606    7835718    Alumnos Alumnos_email_key1392 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1392" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1392";
       public            postgres    false    209            �           2606    7835720    Alumnos Alumnos_email_key1393 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1393" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1393";
       public            postgres    false    209            �           2606    7835722    Alumnos Alumnos_email_key1394 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1394" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1394";
       public            postgres    false    209            �           2606    7835724    Alumnos Alumnos_email_key1395 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1395" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1395";
       public            postgres    false    209            �           2606    7835726    Alumnos Alumnos_email_key1396 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1396" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1396";
       public            postgres    false    209            �           2606    7835728    Alumnos Alumnos_email_key1397 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1397" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1397";
       public            postgres    false    209            �           2606    7835812    Alumnos Alumnos_email_key1398 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1398" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1398";
       public            postgres    false    209            �           2606    7835730    Alumnos Alumnos_email_key1399 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1399" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1399";
       public            postgres    false    209            �           2606    7835974    Alumnos Alumnos_email_key14 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key14" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key14";
       public            postgres    false    209            �           2606    7833828    Alumnos Alumnos_email_key140 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key140" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key140";
       public            postgres    false    209            �           2606    7835732    Alumnos Alumnos_email_key1400 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1400" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1400";
       public            postgres    false    209            �           2606    7835810    Alumnos Alumnos_email_key1401 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1401" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1401";
       public            postgres    false    209            �           2606    7835734    Alumnos Alumnos_email_key1402 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1402" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1402";
       public            postgres    false    209            �           2606    7835736    Alumnos Alumnos_email_key1403 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1403" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1403";
       public            postgres    false    209            �           2606    7835738    Alumnos Alumnos_email_key1404 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1404" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1404";
       public            postgres    false    209            �           2606    7835740    Alumnos Alumnos_email_key1405 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1405" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1405";
       public            postgres    false    209            �           2606    7834686    Alumnos Alumnos_email_key1406 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1406" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1406";
       public            postgres    false    209            �           2606    7834204    Alumnos Alumnos_email_key1407 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1407" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1407";
       public            postgres    false    209            �           2606    7834688    Alumnos Alumnos_email_key1408 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1408" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1408";
       public            postgres    false    209            �           2606    7834690    Alumnos Alumnos_email_key1409 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1409" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1409";
       public            postgres    false    209            �           2606    7835402    Alumnos Alumnos_email_key141 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key141" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key141";
       public            postgres    false    209            �           2606    7834692    Alumnos Alumnos_email_key1410 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1410" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1410";
       public            postgres    false    209            �           2606    7834694    Alumnos Alumnos_email_key1411 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1411" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1411";
       public            postgres    false    209                       2606    7834202    Alumnos Alumnos_email_key1412 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1412" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1412";
       public            postgres    false    209                       2606    7834696    Alumnos Alumnos_email_key1413 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1413" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1413";
       public            postgres    false    209                       2606    7834200    Alumnos Alumnos_email_key1414 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1414" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1414";
       public            postgres    false    209                       2606    7834698    Alumnos Alumnos_email_key1415 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1415" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1415";
       public            postgres    false    209            	           2606    7834704    Alumnos Alumnos_email_key1416 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1416" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1416";
       public            postgres    false    209                       2606    7834700    Alumnos Alumnos_email_key1417 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1417" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1417";
       public            postgres    false    209                       2606    7834702    Alumnos Alumnos_email_key1418 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1418" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1418";
       public            postgres    false    209                       2606    7835514    Alumnos Alumnos_email_key1419 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1419" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1419";
       public            postgres    false    209                       2606    7835404    Alumnos Alumnos_email_key142 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key142" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key142";
       public            postgres    false    209                       2606    7835516    Alumnos Alumnos_email_key1420 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1420" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1420";
       public            postgres    false    209                       2606    7835518    Alumnos Alumnos_email_key1421 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1421" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1421";
       public            postgres    false    209                       2606    7835532    Alumnos Alumnos_email_key1422 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1422" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1422";
       public            postgres    false    209                       2606    7835520    Alumnos Alumnos_email_key1423 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1423" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1423";
       public            postgres    false    209                       2606    7835522    Alumnos Alumnos_email_key1424 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1424" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1424";
       public            postgres    false    209                       2606    7835524    Alumnos Alumnos_email_key1425 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1425" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1425";
       public            postgres    false    209                       2606    7835526    Alumnos Alumnos_email_key1426 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1426" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1426";
       public            postgres    false    209            !           2606    7835528    Alumnos Alumnos_email_key1427 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1427" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1427";
       public            postgres    false    209            #           2606    7835530    Alumnos Alumnos_email_key1428 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1428" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1428";
       public            postgres    false    209            %           2606    7835584    Alumnos Alumnos_email_key1429 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1429" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1429";
       public            postgres    false    209            '           2606    7835406    Alumnos Alumnos_email_key143 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key143" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key143";
       public            postgres    false    209            )           2606    7835586    Alumnos Alumnos_email_key1430 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1430" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1430";
       public            postgres    false    209            +           2606    7835588    Alumnos Alumnos_email_key1431 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1431" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1431";
       public            postgres    false    209            -           2606    7835590    Alumnos Alumnos_email_key1432 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1432" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1432";
       public            postgres    false    209            /           2606    7835592    Alumnos Alumnos_email_key1433 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1433" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1433";
       public            postgres    false    209            1           2606    7835594    Alumnos Alumnos_email_key1434 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1434" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1434";
       public            postgres    false    209            3           2606    7835756    Alumnos Alumnos_email_key1435 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1435" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1435";
       public            postgres    false    209            5           2606    7835596    Alumnos Alumnos_email_key1436 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1436" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1436";
       public            postgres    false    209            7           2606    7835742    Alumnos Alumnos_email_key1437 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1437" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1437";
       public            postgres    false    209            9           2606    7835754    Alumnos Alumnos_email_key1438 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1438" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1438";
       public            postgres    false    209            ;           2606    7835752    Alumnos Alumnos_email_key1439 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1439" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1439";
       public            postgres    false    209            =           2606    7835408    Alumnos Alumnos_email_key144 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key144" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key144";
       public            postgres    false    209            ?           2606    7835744    Alumnos Alumnos_email_key1440 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1440" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1440";
       public            postgres    false    209            A           2606    7835750    Alumnos Alumnos_email_key1441 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1441" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1441";
       public            postgres    false    209            C           2606    7835746    Alumnos Alumnos_email_key1442 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1442" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1442";
       public            postgres    false    209            E           2606    7835748    Alumnos Alumnos_email_key1443 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1443" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1443";
       public            postgres    false    209            G           2606    7833718    Alumnos Alumnos_email_key1444 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1444" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1444";
       public            postgres    false    209            I           2606    7833720    Alumnos Alumnos_email_key1445 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1445" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1445";
       public            postgres    false    209            K           2606    7833722    Alumnos Alumnos_email_key1446 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1446" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1446";
       public            postgres    false    209            M           2606    7833724    Alumnos Alumnos_email_key1447 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1447" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1447";
       public            postgres    false    209            O           2606    7833726    Alumnos Alumnos_email_key1448 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1448" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1448";
       public            postgres    false    209            Q           2606    7833728    Alumnos Alumnos_email_key1449 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1449" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1449";
       public            postgres    false    209            S           2606    7833904    Alumnos Alumnos_email_key145 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key145" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key145";
       public            postgres    false    209            U           2606    7833730    Alumnos Alumnos_email_key1450 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1450" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1450";
       public            postgres    false    209            W           2606    7833732    Alumnos Alumnos_email_key1451 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1451" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1451";
       public            postgres    false    209            Y           2606    7833976    Alumnos Alumnos_email_key1452 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1452" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1452";
       public            postgres    false    209            [           2606    7833734    Alumnos Alumnos_email_key1453 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1453" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1453";
       public            postgres    false    209            ]           2606    7833736    Alumnos Alumnos_email_key1454 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1454" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1454";
       public            postgres    false    209            _           2606    7833974    Alumnos Alumnos_email_key1455 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1455" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1455";
       public            postgres    false    209            a           2606    7833738    Alumnos Alumnos_email_key1456 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1456" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1456";
       public            postgres    false    209            c           2606    7833740    Alumnos Alumnos_email_key1457 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1457" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1457";
       public            postgres    false    209            e           2606    7833742    Alumnos Alumnos_email_key1458 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1458" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1458";
       public            postgres    false    209            g           2606    7833744    Alumnos Alumnos_email_key1459 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1459" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1459";
       public            postgres    false    209            i           2606    7834650    Alumnos Alumnos_email_key146 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key146" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key146";
       public            postgres    false    209            k           2606    7833746    Alumnos Alumnos_email_key1460 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1460" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1460";
       public            postgres    false    209            m           2606    7833748    Alumnos Alumnos_email_key1461 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1461" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1461";
       public            postgres    false    209            o           2606    7833750    Alumnos Alumnos_email_key1462 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1462" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1462";
       public            postgres    false    209            q           2606    7833064    Alumnos Alumnos_email_key1463 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1463" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1463";
       public            postgres    false    209            s           2606    7833752    Alumnos Alumnos_email_key1464 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1464" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1464";
       public            postgres    false    209            u           2606    7833754    Alumnos Alumnos_email_key1465 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1465" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1465";
       public            postgres    false    209            w           2606    7833756    Alumnos Alumnos_email_key1466 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1466" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1466";
       public            postgres    false    209            y           2606    7833758    Alumnos Alumnos_email_key1467 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1467" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1467";
       public            postgres    false    209            {           2606    7833760    Alumnos Alumnos_email_key1468 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1468" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1468";
       public            postgres    false    209            }           2606    7833762    Alumnos Alumnos_email_key1469 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1469" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1469";
       public            postgres    false    209                       2606    7834652    Alumnos Alumnos_email_key147 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key147" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key147";
       public            postgres    false    209            �           2606    7833764    Alumnos Alumnos_email_key1470 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1470" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1470";
       public            postgres    false    209            �           2606    7833766    Alumnos Alumnos_email_key1471 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1471" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1471";
       public            postgres    false    209            �           2606    7835412    Alumnos Alumnos_email_key1472 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1472" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1472";
       public            postgres    false    209            �           2606    7833768    Alumnos Alumnos_email_key1473 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1473" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1473";
       public            postgres    false    209            �           2606    7833770    Alumnos Alumnos_email_key1474 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1474" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1474";
       public            postgres    false    209            �           2606    7833772    Alumnos Alumnos_email_key1475 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1475" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1475";
       public            postgres    false    209            �           2606    7833774    Alumnos Alumnos_email_key1476 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1476" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1476";
       public            postgres    false    209            �           2606    7833776    Alumnos Alumnos_email_key1477 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1477" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1477";
       public            postgres    false    209            �           2606    7833778    Alumnos Alumnos_email_key1478 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1478" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1478";
       public            postgres    false    209            �           2606    7833780    Alumnos Alumnos_email_key1479 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1479" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1479";
       public            postgres    false    209            �           2606    7835424    Alumnos Alumnos_email_key148 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key148" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key148";
       public            postgres    false    209            �           2606    7833782    Alumnos Alumnos_email_key1480 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1480" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1480";
       public            postgres    false    209            �           2606    7833784    Alumnos Alumnos_email_key1481 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1481" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1481";
       public            postgres    false    209            �           2606    7833786    Alumnos Alumnos_email_key1482 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1482" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1482";
       public            postgres    false    209            �           2606    7833788    Alumnos Alumnos_email_key1483 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1483" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1483";
       public            postgres    false    209            �           2606    7833790    Alumnos Alumnos_email_key1484 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1484" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1484";
       public            postgres    false    209            �           2606    7833792    Alumnos Alumnos_email_key1485 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1485" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1485";
       public            postgres    false    209            �           2606    7834420    Alumnos Alumnos_email_key1486 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1486" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1486";
       public            postgres    false    209            �           2606    7834422    Alumnos Alumnos_email_key1487 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1487" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1487";
       public            postgres    false    209            �           2606    7834424    Alumnos Alumnos_email_key1488 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1488" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1488";
       public            postgres    false    209            �           2606    7834426    Alumnos Alumnos_email_key1489 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1489" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1489";
       public            postgres    false    209            �           2606    7834654    Alumnos Alumnos_email_key149 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key149" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key149";
       public            postgres    false    209            �           2606    7834428    Alumnos Alumnos_email_key1490 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1490" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1490";
       public            postgres    false    209            �           2606    7834430    Alumnos Alumnos_email_key1491 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1491" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1491";
       public            postgres    false    209            �           2606    7834432    Alumnos Alumnos_email_key1492 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1492" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1492";
       public            postgres    false    209            �           2606    7834434    Alumnos Alumnos_email_key1493 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1493" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1493";
       public            postgres    false    209            �           2606    7834436    Alumnos Alumnos_email_key1494 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1494" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1494";
       public            postgres    false    209            �           2606    7835022    Alumnos Alumnos_email_key1495 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1495" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1495";
       public            postgres    false    209            �           2606    7834438    Alumnos Alumnos_email_key1496 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1496" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1496";
       public            postgres    false    209            �           2606    7834440    Alumnos Alumnos_email_key1497 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1497" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1497";
       public            postgres    false    209            �           2606    7834442    Alumnos Alumnos_email_key1498 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1498" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1498";
       public            postgres    false    209            �           2606    7835020    Alumnos Alumnos_email_key1499 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1499" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1499";
       public            postgres    false    209            �           2606    7834648    Alumnos Alumnos_email_key15 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key15" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key15";
       public            postgres    false    209            �           2606    7834940    Alumnos Alumnos_email_key150 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key150" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key150";
       public            postgres    false    209            �           2606    7834444    Alumnos Alumnos_email_key1500 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1500" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1500";
       public            postgres    false    209            �           2606    7834446    Alumnos Alumnos_email_key1501 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1501" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1501";
       public            postgres    false    209            �           2606    7834448    Alumnos Alumnos_email_key1502 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1502" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1502";
       public            postgres    false    209            �           2606    7835600    Alumnos Alumnos_email_key1503 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1503" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1503";
       public            postgres    false    209            �           2606    7834450    Alumnos Alumnos_email_key1504 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1504" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1504";
       public            postgres    false    209            �           2606    7835598    Alumnos Alumnos_email_key1505 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1505" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1505";
       public            postgres    false    209            �           2606    7834452    Alumnos Alumnos_email_key1506 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1506" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1506";
       public            postgres    false    209            �           2606    7834454    Alumnos Alumnos_email_key1507 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1507" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1507";
       public            postgres    false    209            �           2606    7834684    Alumnos Alumnos_email_key1508 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1508" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1508";
       public            postgres    false    209            �           2606    7834682    Alumnos Alumnos_email_key1509 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1509" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1509";
       public            postgres    false    209            �           2606    7834942    Alumnos Alumnos_email_key151 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key151" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key151";
       public            postgres    false    209            �           2606    7834456    Alumnos Alumnos_email_key1510 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1510" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1510";
       public            postgres    false    209            �           2606    7834458    Alumnos Alumnos_email_key1511 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1511" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1511";
       public            postgres    false    209            �           2606    7834460    Alumnos Alumnos_email_key1512 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1512" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1512";
       public            postgres    false    209            �           2606    7834462    Alumnos Alumnos_email_key1513 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1513" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1513";
       public            postgres    false    209            �           2606    7834680    Alumnos Alumnos_email_key1514 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1514" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1514";
       public            postgres    false    209            �           2606    7834464    Alumnos Alumnos_email_key1515 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1515" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1515";
       public            postgres    false    209            �           2606    7834466    Alumnos Alumnos_email_key1516 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1516" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1516";
       public            postgres    false    209            �           2606    7834678    Alumnos Alumnos_email_key1517 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1517" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1517";
       public            postgres    false    209            �           2606    7834468    Alumnos Alumnos_email_key1518 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1518" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1518";
       public            postgres    false    209            �           2606    7834470    Alumnos Alumnos_email_key1519 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1519" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1519";
       public            postgres    false    209            �           2606    7835414    Alumnos Alumnos_email_key152 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key152" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key152";
       public            postgres    false    209            �           2606    7834472    Alumnos Alumnos_email_key1520 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1520" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1520";
       public            postgres    false    209            �           2606    7834474    Alumnos Alumnos_email_key1521 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1521" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1521";
       public            postgres    false    209            �           2606    7834476    Alumnos Alumnos_email_key1522 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1522" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1522";
       public            postgres    false    209            �           2606    7835190    Alumnos Alumnos_email_key1523 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1523" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1523";
       public            postgres    false    209            �           2606    7834478    Alumnos Alumnos_email_key1524 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1524" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1524";
       public            postgres    false    209            �           2606    7834480    Alumnos Alumnos_email_key1525 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1525" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1525";
       public            postgres    false    209            �           2606    7835188    Alumnos Alumnos_email_key1526 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1526" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1526";
       public            postgres    false    209            �           2606    7834482    Alumnos Alumnos_email_key1527 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1527" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1527";
       public            postgres    false    209                       2606    7834484    Alumnos Alumnos_email_key1528 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1528" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1528";
       public            postgres    false    209                       2606    7834486    Alumnos Alumnos_email_key1529 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1529" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1529";
       public            postgres    false    209                       2606    7835416    Alumnos Alumnos_email_key153 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key153" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key153";
       public            postgres    false    209                       2606    7834488    Alumnos Alumnos_email_key1530 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1530" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1530";
       public            postgres    false    209            	           2606    7834490    Alumnos Alumnos_email_key1531 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1531" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1531";
       public            postgres    false    209                       2606    7834492    Alumnos Alumnos_email_key1532 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1532" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1532";
       public            postgres    false    209                       2606    7834494    Alumnos Alumnos_email_key1533 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1533" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1533";
       public            postgres    false    209                       2606    7834922    Alumnos Alumnos_email_key1534 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1534" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1534";
       public            postgres    false    209                       2606    7834496    Alumnos Alumnos_email_key1535 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1535" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1535";
       public            postgres    false    209                       2606    7834498    Alumnos Alumnos_email_key1536 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1536" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1536";
       public            postgres    false    209                       2606    7834500    Alumnos Alumnos_email_key1537 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1537" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1537";
       public            postgres    false    209                       2606    7834920    Alumnos Alumnos_email_key1538 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1538" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1538";
       public            postgres    false    209                       2606    7834502    Alumnos Alumnos_email_key1539 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1539" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1539";
       public            postgres    false    209                       2606    7835418    Alumnos Alumnos_email_key154 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key154" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key154";
       public            postgres    false    209                       2606    7834504    Alumnos Alumnos_email_key1540 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1540" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1540";
       public            postgres    false    209                       2606    7834506    Alumnos Alumnos_email_key1541 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1541" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1541";
       public            postgres    false    209            !           2606    7834508    Alumnos Alumnos_email_key1542 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1542" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1542";
       public            postgres    false    209            #           2606    7834510    Alumnos Alumnos_email_key1543 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1543" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1543";
       public            postgres    false    209            %           2606    7834512    Alumnos Alumnos_email_key1544 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1544" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1544";
       public            postgres    false    209            '           2606    7834514    Alumnos Alumnos_email_key1545 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1545" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1545";
       public            postgres    false    209            )           2606    7834516    Alumnos Alumnos_email_key1546 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1546" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1546";
       public            postgres    false    209            +           2606    7835098    Alumnos Alumnos_email_key1547 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1547" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1547";
       public            postgres    false    209            -           2606    7834518    Alumnos Alumnos_email_key1548 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1548" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1548";
       public            postgres    false    209            /           2606    7834520    Alumnos Alumnos_email_key1549 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1549" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1549";
       public            postgres    false    209            1           2606    7835420    Alumnos Alumnos_email_key155 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key155" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key155";
       public            postgres    false    209            3           2606    7835096    Alumnos Alumnos_email_key1550 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1550" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1550";
       public            postgres    false    209            5           2606    7834522    Alumnos Alumnos_email_key1551 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1551" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1551";
       public            postgres    false    209            7           2606    7834524    Alumnos Alumnos_email_key1552 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1552" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1552";
       public            postgres    false    209            9           2606    7834526    Alumnos Alumnos_email_key1553 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1553" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1553";
       public            postgres    false    209            ;           2606    7834528    Alumnos Alumnos_email_key1554 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1554" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1554";
       public            postgres    false    209            =           2606    7834530    Alumnos Alumnos_email_key1555 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1555" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1555";
       public            postgres    false    209            ?           2606    7834532    Alumnos Alumnos_email_key1556 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1556" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1556";
       public            postgres    false    209            A           2606    7834534    Alumnos Alumnos_email_key1557 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1557" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1557";
       public            postgres    false    209            C           2606    7834536    Alumnos Alumnos_email_key1558 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1558" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1558";
       public            postgres    false    209            E           2606    7834538    Alumnos Alumnos_email_key1559 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1559" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1559";
       public            postgres    false    209            G           2606    7835422    Alumnos Alumnos_email_key156 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key156" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key156";
       public            postgres    false    209            I           2606    7834540    Alumnos Alumnos_email_key1560 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1560" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1560";
       public            postgres    false    209            K           2606    7834542    Alumnos Alumnos_email_key1561 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1561" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1561";
       public            postgres    false    209            M           2606    7834570    Alumnos Alumnos_email_key1562 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1562" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1562";
       public            postgres    false    209            O           2606    7834568    Alumnos Alumnos_email_key1563 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1563" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1563";
       public            postgres    false    209            Q           2606    7834544    Alumnos Alumnos_email_key1564 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1564" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1564";
       public            postgres    false    209            S           2606    7834566    Alumnos Alumnos_email_key1565 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1565" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1565";
       public            postgres    false    209            U           2606    7834564    Alumnos Alumnos_email_key1566 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1566" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1566";
       public            postgres    false    209            W           2606    7834562    Alumnos Alumnos_email_key1567 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1567" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1567";
       public            postgres    false    209            Y           2606    7834546    Alumnos Alumnos_email_key1568 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1568" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1568";
       public            postgres    false    209            [           2606    7834548    Alumnos Alumnos_email_key1569 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1569" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1569";
       public            postgres    false    209            ]           2606    7835814    Alumnos Alumnos_email_key157 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key157" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key157";
       public            postgres    false    209            _           2606    7834550    Alumnos Alumnos_email_key1570 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1570" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1570";
       public            postgres    false    209            a           2606    7834560    Alumnos Alumnos_email_key1571 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1571" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1571";
       public            postgres    false    209            c           2606    7834552    Alumnos Alumnos_email_key1572 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1572" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1572";
       public            postgres    false    209            e           2606    7834554    Alumnos Alumnos_email_key1573 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1573" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1573";
       public            postgres    false    209            g           2606    7834556    Alumnos Alumnos_email_key1574 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1574" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1574";
       public            postgres    false    209            i           2606    7834558    Alumnos Alumnos_email_key1575 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1575" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1575";
       public            postgres    false    209            k           2606    7833614    Alumnos Alumnos_email_key1576 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1576" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1576";
       public            postgres    false    209            m           2606    7833606    Alumnos Alumnos_email_key1577 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1577" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1577";
       public            postgres    false    209            o           2606    7833608    Alumnos Alumnos_email_key1578 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1578" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1578";
       public            postgres    false    209            q           2606    7833610    Alumnos Alumnos_email_key1579 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1579" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1579";
       public            postgres    false    209            s           2606    7835816    Alumnos Alumnos_email_key158 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key158" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key158";
       public            postgres    false    209            u           2606    7833612    Alumnos Alumnos_email_key1580 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1580" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1580";
       public            postgres    false    209            w           2606    7832800    Alumnos Alumnos_email_key1581 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1581" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1581";
       public            postgres    false    209            y           2606    7832798    Alumnos Alumnos_email_key1582 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1582" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1582";
       public            postgres    false    209            {           2606    7832784    Alumnos Alumnos_email_key1583 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1583" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1583";
       public            postgres    false    209            }           2606    7832786    Alumnos Alumnos_email_key1584 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1584" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1584";
       public            postgres    false    209                       2606    7832788    Alumnos Alumnos_email_key1585 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1585" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1585";
       public            postgres    false    209            �           2606    7832796    Alumnos Alumnos_email_key1586 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1586" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1586";
       public            postgres    false    209            �           2606    7832790    Alumnos Alumnos_email_key1587 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1587" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1587";
       public            postgres    false    209            �           2606    7832792    Alumnos Alumnos_email_key1588 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1588" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1588";
       public            postgres    false    209            �           2606    7832794    Alumnos Alumnos_email_key1589 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1589" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1589";
       public            postgres    false    209            �           2606    7835818    Alumnos Alumnos_email_key159 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key159" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key159";
       public            postgres    false    209            �           2606    7835860    Alumnos Alumnos_email_key1590 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1590" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1590";
       public            postgres    false    209            �           2606    7835862    Alumnos Alumnos_email_key1591 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1591" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1591";
       public            postgres    false    209            �           2606    7835864    Alumnos Alumnos_email_key1592 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1592" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1592";
       public            postgres    false    209            �           2606    7835866    Alumnos Alumnos_email_key1593 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1593" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1593";
       public            postgres    false    209            �           2606    7835868    Alumnos Alumnos_email_key1594 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1594" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1594";
       public            postgres    false    209            �           2606    7835870    Alumnos Alumnos_email_key1595 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1595" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1595";
       public            postgres    false    209            �           2606    7835872    Alumnos Alumnos_email_key1596 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1596" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1596";
       public            postgres    false    209            �           2606    7835874    Alumnos Alumnos_email_key1597 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1597" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1597";
       public            postgres    false    209            �           2606    7835876    Alumnos Alumnos_email_key1598 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1598" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1598";
       public            postgres    false    209            �           2606    7835878    Alumnos Alumnos_email_key1599 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1599" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1599";
       public            postgres    false    209            �           2606    7832824    Alumnos Alumnos_email_key16 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key16" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key16";
       public            postgres    false    209            �           2606    7835820    Alumnos Alumnos_email_key160 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key160" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key160";
       public            postgres    false    209            �           2606    7834176    Alumnos Alumnos_email_key1600 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1600" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1600";
       public            postgres    false    209            �           2606    7835880    Alumnos Alumnos_email_key1601 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1601" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1601";
       public            postgres    false    209            �           2606    7835882    Alumnos Alumnos_email_key1602 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1602" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1602";
       public            postgres    false    209            �           2606    7834174    Alumnos Alumnos_email_key1603 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1603" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1603";
       public            postgres    false    209            �           2606    7834172    Alumnos Alumnos_email_key1604 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1604" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1604";
       public            postgres    false    209            �           2606    7834170    Alumnos Alumnos_email_key1605 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1605" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1605";
       public            postgres    false    209            �           2606    7835884    Alumnos Alumnos_email_key1606 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1606" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1606";
       public            postgres    false    209            �           2606    7835886    Alumnos Alumnos_email_key1607 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1607" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1607";
       public            postgres    false    209            �           2606    7835888    Alumnos Alumnos_email_key1608 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1608" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1608";
       public            postgres    false    209            �           2606    7835890    Alumnos Alumnos_email_key1609 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1609" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1609";
       public            postgres    false    209            �           2606    7835822    Alumnos Alumnos_email_key161 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key161" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key161";
       public            postgres    false    209            �           2606    7834168    Alumnos Alumnos_email_key1610 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1610" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1610";
       public            postgres    false    209            �           2606    7835892    Alumnos Alumnos_email_key1611 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1611" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1611";
       public            postgres    false    209            �           2606    7835894    Alumnos Alumnos_email_key1612 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1612" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1612";
       public            postgres    false    209            �           2606    7834166    Alumnos Alumnos_email_key1613 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1613" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1613";
       public            postgres    false    209            �           2606    7835896    Alumnos Alumnos_email_key1614 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1614" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1614";
       public            postgres    false    209            �           2606    7835898    Alumnos Alumnos_email_key1615 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1615" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1615";
       public            postgres    false    209            �           2606    7835900    Alumnos Alumnos_email_key1616 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1616" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1616";
       public            postgres    false    209            �           2606    7835902    Alumnos Alumnos_email_key1617 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1617" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1617";
       public            postgres    false    209            �           2606    7835914    Alumnos Alumnos_email_key1618 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1618" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1618";
       public            postgres    false    209            �           2606    7835904    Alumnos Alumnos_email_key1619 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1619" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1619";
       public            postgres    false    209            �           2606    7835824    Alumnos Alumnos_email_key162 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key162" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key162";
       public            postgres    false    209            �           2606    7835906    Alumnos Alumnos_email_key1620 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1620" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1620";
       public            postgres    false    209            �           2606    7835908    Alumnos Alumnos_email_key1621 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1621" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1621";
       public            postgres    false    209            �           2606    7835910    Alumnos Alumnos_email_key1622 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1622" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1622";
       public            postgres    false    209            �           2606    7835912    Alumnos Alumnos_email_key1623 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1623" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1623";
       public            postgres    false    209            �           2606    7834758    Alumnos Alumnos_email_key1624 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1624" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1624";
       public            postgres    false    209            �           2606    7834760    Alumnos Alumnos_email_key1625 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1625" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1625";
       public            postgres    false    209            �           2606    7834762    Alumnos Alumnos_email_key1626 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1626" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1626";
       public            postgres    false    209            �           2606    7834764    Alumnos Alumnos_email_key1627 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1627" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1627";
       public            postgres    false    209            �           2606    7834766    Alumnos Alumnos_email_key1628 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1628" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1628";
       public            postgres    false    209            �           2606    7834768    Alumnos Alumnos_email_key1629 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1629" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1629";
       public            postgres    false    209            �           2606    7835060    Alumnos Alumnos_email_key163 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key163" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key163";
       public            postgres    false    209            �           2606    7834770    Alumnos Alumnos_email_key1630 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1630" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1630";
       public            postgres    false    209            �           2606    7835460    Alumnos Alumnos_email_key1631 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1631" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1631";
       public            postgres    false    209            �           2606    7834772    Alumnos Alumnos_email_key1632 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1632" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1632";
       public            postgres    false    209            �           2606    7834774    Alumnos Alumnos_email_key1633 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1633" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1633";
       public            postgres    false    209            �           2606    7834776    Alumnos Alumnos_email_key1634 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1634" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1634";
       public            postgres    false    209            �           2606    7834778    Alumnos Alumnos_email_key1635 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1635" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1635";
       public            postgres    false    209            �           2606    7834780    Alumnos Alumnos_email_key1636 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1636" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1636";
       public            postgres    false    209            �           2606    7834782    Alumnos Alumnos_email_key1637 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1637" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1637";
       public            postgres    false    209            �           2606    7834784    Alumnos Alumnos_email_key1638 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1638" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1638";
       public            postgres    false    209            �           2606    7834786    Alumnos Alumnos_email_key1639 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1639" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1639";
       public            postgres    false    209            �           2606    7835826    Alumnos Alumnos_email_key164 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key164" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key164";
       public            postgres    false    209            �           2606    7834788    Alumnos Alumnos_email_key1640 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1640" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1640";
       public            postgres    false    209            �           2606    7834790    Alumnos Alumnos_email_key1641 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1641" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1641";
       public            postgres    false    209            �           2606    7834792    Alumnos Alumnos_email_key1642 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1642" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1642";
       public            postgres    false    209                       2606    7835458    Alumnos Alumnos_email_key1643 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1643" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1643";
       public            postgres    false    209                       2606    7834794    Alumnos Alumnos_email_key1644 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1644" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1644";
       public            postgres    false    209                       2606    7835456    Alumnos Alumnos_email_key1645 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1645" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1645";
       public            postgres    false    209                       2606    7834796    Alumnos Alumnos_email_key1646 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1646" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1646";
       public            postgres    false    209            	           2606    7834798    Alumnos Alumnos_email_key1647 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1647" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1647";
       public            postgres    false    209                       2606    7834800    Alumnos Alumnos_email_key1648 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1648" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1648";
       public            postgres    false    209                       2606    7834802    Alumnos Alumnos_email_key1649 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1649" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1649";
       public            postgres    false    209                       2606    7833358    Alumnos Alumnos_email_key165 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key165" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key165";
       public            postgres    false    209                       2606    7834804    Alumnos Alumnos_email_key1650 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1650" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1650";
       public            postgres    false    209                       2606    7835454    Alumnos Alumnos_email_key1651 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1651" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1651";
       public            postgres    false    209                       2606    7834806    Alumnos Alumnos_email_key1652 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1652" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1652";
       public            postgres    false    209                       2606    7835452    Alumnos Alumnos_email_key1653 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1653" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1653";
       public            postgres    false    209                       2606    7834808    Alumnos Alumnos_email_key1654 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1654" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1654";
       public            postgres    false    209                       2606    7834810    Alumnos Alumnos_email_key1655 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1655" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1655";
       public            postgres    false    209                       2606    7835242    Alumnos Alumnos_email_key1656 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1656" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1656";
       public            postgres    false    209                       2606    7834812    Alumnos Alumnos_email_key1657 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1657" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1657";
       public            postgres    false    209            !           2606    7834814    Alumnos Alumnos_email_key1658 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1658" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1658";
       public            postgres    false    209            #           2606    7834816    Alumnos Alumnos_email_key1659 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1659" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1659";
       public            postgres    false    209            %           2606    7833918    Alumnos Alumnos_email_key166 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key166" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key166";
       public            postgres    false    209            '           2606    7834818    Alumnos Alumnos_email_key1660 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1660" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1660";
       public            postgres    false    209            )           2606    7834820    Alumnos Alumnos_email_key1661 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1661" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1661";
       public            postgres    false    209            +           2606    7834822    Alumnos Alumnos_email_key1662 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1662" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1662";
       public            postgres    false    209            -           2606    7833260    Alumnos Alumnos_email_key1663 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1663" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1663";
       public            postgres    false    209            /           2606    7834824    Alumnos Alumnos_email_key1664 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1664" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1664";
       public            postgres    false    209            1           2606    7833262    Alumnos Alumnos_email_key1665 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1665" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1665";
       public            postgres    false    209            3           2606    7833264    Alumnos Alumnos_email_key1666 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1666" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1666";
       public            postgres    false    209            5           2606    7833266    Alumnos Alumnos_email_key1667 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1667" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1667";
       public            postgres    false    209            7           2606    7833268    Alumnos Alumnos_email_key1668 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1668" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1668";
       public            postgres    false    209            9           2606    7833270    Alumnos Alumnos_email_key1669 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1669" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1669";
       public            postgres    false    209            ;           2606    7835178    Alumnos Alumnos_email_key167 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key167" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key167";
       public            postgres    false    209            =           2606    7833272    Alumnos Alumnos_email_key1670 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1670" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1670";
       public            postgres    false    209            ?           2606    7833274    Alumnos Alumnos_email_key1671 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1671" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1671";
       public            postgres    false    209            A           2606    7833276    Alumnos Alumnos_email_key1672 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1672" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1672";
       public            postgres    false    209            C           2606    7833278    Alumnos Alumnos_email_key1673 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1673" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1673";
       public            postgres    false    209            E           2606    7833112    Alumnos Alumnos_email_key1674 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1674" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1674";
       public            postgres    false    209            G           2606    7833280    Alumnos Alumnos_email_key1675 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1675" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1675";
       public            postgres    false    209            I           2606    7833282    Alumnos Alumnos_email_key1676 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1676" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1676";
       public            postgres    false    209            K           2606    7833284    Alumnos Alumnos_email_key1677 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1677" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1677";
       public            postgres    false    209            M           2606    7833286    Alumnos Alumnos_email_key1678 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1678" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1678";
       public            postgres    false    209            O           2606    7833288    Alumnos Alumnos_email_key1679 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1679" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1679";
       public            postgres    false    209            Q           2606    7835180    Alumnos Alumnos_email_key168 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key168" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key168";
       public            postgres    false    209            S           2606    7833290    Alumnos Alumnos_email_key1680 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1680" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1680";
       public            postgres    false    209            U           2606    7833292    Alumnos Alumnos_email_key1681 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1681" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1681";
       public            postgres    false    209            W           2606    7832936    Alumnos Alumnos_email_key1682 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1682" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1682";
       public            postgres    false    209            Y           2606    7833110    Alumnos Alumnos_email_key1683 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1683" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1683";
       public            postgres    false    209            [           2606    7832938    Alumnos Alumnos_email_key1684 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1684" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1684";
       public            postgres    false    209            ]           2606    7832940    Alumnos Alumnos_email_key1685 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1685" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1685";
       public            postgres    false    209            _           2606    7832942    Alumnos Alumnos_email_key1686 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1686" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1686";
       public            postgres    false    209            a           2606    7833108    Alumnos Alumnos_email_key1687 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1687" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1687";
       public            postgres    false    209            c           2606    7832944    Alumnos Alumnos_email_key1688 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1688" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1688";
       public            postgres    false    209            e           2606    7833106    Alumnos Alumnos_email_key1689 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1689" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1689";
       public            postgres    false    209            g           2606    7835182    Alumnos Alumnos_email_key169 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key169" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key169";
       public            postgres    false    209            i           2606    7832946    Alumnos Alumnos_email_key1690 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1690" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1690";
       public            postgres    false    209            k           2606    7832948    Alumnos Alumnos_email_key1691 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1691" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1691";
       public            postgres    false    209            m           2606    7832950    Alumnos Alumnos_email_key1692 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1692" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1692";
       public            postgres    false    209            o           2606    7832952    Alumnos Alumnos_email_key1693 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1693" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1693";
       public            postgres    false    209            q           2606    7832968    Alumnos Alumnos_email_key1694 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1694" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1694";
       public            postgres    false    209            s           2606    7832966    Alumnos Alumnos_email_key1695 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1695" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1695";
       public            postgres    false    209            u           2606    7832954    Alumnos Alumnos_email_key1696 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1696" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1696";
       public            postgres    false    209            w           2606    7832956    Alumnos Alumnos_email_key1697 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1697" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1697";
       public            postgres    false    209            y           2606    7832964    Alumnos Alumnos_email_key1698 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1698" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1698";
       public            postgres    false    209            {           2606    7832958    Alumnos Alumnos_email_key1699 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1699" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1699";
       public            postgres    false    209            }           2606    7832826    Alumnos Alumnos_email_key17 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key17" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key17";
       public            postgres    false    209                       2606    7835184    Alumnos Alumnos_email_key170 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key170" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key170";
       public            postgres    false    209            �           2606    7832960    Alumnos Alumnos_email_key1700 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1700" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1700";
       public            postgres    false    209            �           2606    7832962    Alumnos Alumnos_email_key1701 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1701" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1701";
       public            postgres    false    209            �           2606    7832934    Alumnos Alumnos_email_key1702 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1702" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1702";
       public            postgres    false    209            �           2606    7832926    Alumnos Alumnos_email_key1703 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1703" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1703";
       public            postgres    false    209            �           2606    7832928    Alumnos Alumnos_email_key1704 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1704" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1704";
       public            postgres    false    209            �           2606    7832930    Alumnos Alumnos_email_key1705 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1705" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1705";
       public            postgres    false    209            �           2606    7832932    Alumnos Alumnos_email_key1706 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1706" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1706";
       public            postgres    false    209            �           2606    7836094    Alumnos Alumnos_email_key1707 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1707" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1707";
       public            postgres    false    209            �           2606    7836096    Alumnos Alumnos_email_key1708 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1708" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1708";
       public            postgres    false    209            �           2606    7836098    Alumnos Alumnos_email_key1709 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1709" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1709";
       public            postgres    false    209            �           2606    7835058    Alumnos Alumnos_email_key171 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key171" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key171";
       public            postgres    false    209            �           2606    7834024    Alumnos Alumnos_email_key1710 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1710" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1710";
       public            postgres    false    209            �           2606    7836100    Alumnos Alumnos_email_key1711 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1711" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1711";
       public            postgres    false    209            �           2606    7836102    Alumnos Alumnos_email_key1712 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1712" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1712";
       public            postgres    false    209            �           2606    7836104    Alumnos Alumnos_email_key1713 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1713" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1713";
       public            postgres    false    209            �           2606    7836106    Alumnos Alumnos_email_key1714 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1714" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1714";
       public            postgres    false    209            �           2606    7836108    Alumnos Alumnos_email_key1715 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1715" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1715";
       public            postgres    false    209            �           2606    7836110    Alumnos Alumnos_email_key1716 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1716" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1716";
       public            postgres    false    209            �           2606    7834022    Alumnos Alumnos_email_key1717 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1717" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1717";
       public            postgres    false    209            �           2606    7836112    Alumnos Alumnos_email_key1718 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1718" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1718";
       public            postgres    false    209            �           2606    7836114    Alumnos Alumnos_email_key1719 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1719" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1719";
       public            postgres    false    209            �           2606    7835186    Alumnos Alumnos_email_key172 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key172" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key172";
       public            postgres    false    209            �           2606    7836116    Alumnos Alumnos_email_key1720 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1720" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1720";
       public            postgres    false    209            �           2606    7836118    Alumnos Alumnos_email_key1721 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1721" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1721";
       public            postgres    false    209            �           2606    7836120    Alumnos Alumnos_email_key1722 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1722" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1722";
       public            postgres    false    209            �           2606    7836122    Alumnos Alumnos_email_key1723 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1723" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1723";
       public            postgres    false    209            �           2606    7836124    Alumnos Alumnos_email_key1724 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1724" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1724";
       public            postgres    false    209            �           2606    7832674    Alumnos Alumnos_email_key1725 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1725" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1725";
       public            postgres    false    209            �           2606    7836126    Alumnos Alumnos_email_key1726 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1726" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1726";
       public            postgres    false    209            �           2606    7836128    Alumnos Alumnos_email_key1727 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1727" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1727";
       public            postgres    false    209            �           2606    7832672    Alumnos Alumnos_email_key1728 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1728" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1728";
       public            postgres    false    209            �           2606    7836130    Alumnos Alumnos_email_key1729 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1729" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1729";
       public            postgres    false    209            �           2606    7834712    Alumnos Alumnos_email_key173 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key173" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key173";
       public            postgres    false    209            �           2606    7832670    Alumnos Alumnos_email_key1730 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1730" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1730";
       public            postgres    false    209            �           2606    7836132    Alumnos Alumnos_email_key1731 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key1731" UNIQUE (email);
 K   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key1731";
       public            postgres    false    209            �           2606    7834714    Alumnos Alumnos_email_key174 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key174" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key174";
       public            postgres    false    209            �           2606    7832876    Alumnos Alumnos_email_key175 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key175" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key175";
       public            postgres    false    209            �           2606    7832878    Alumnos Alumnos_email_key176 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key176" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key176";
       public            postgres    false    209            �           2606    7833104    Alumnos Alumnos_email_key177 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key177" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key177";
       public            postgres    false    209            �           2606    7835056    Alumnos Alumnos_email_key178 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key178" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key178";
       public            postgres    false    209            �           2606    7833518    Alumnos Alumnos_email_key179 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key179" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key179";
       public            postgres    false    209            �           2606    7835172    Alumnos Alumnos_email_key18 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key18" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key18";
       public            postgres    false    209            �           2606    7833520    Alumnos Alumnos_email_key180 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key180" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key180";
       public            postgres    false    209            �           2606    7833522    Alumnos Alumnos_email_key181 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key181" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key181";
       public            postgres    false    209            �           2606    7835158    Alumnos Alumnos_email_key182 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key182" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key182";
       public            postgres    false    209            �           2606    7835160    Alumnos Alumnos_email_key183 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key183" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key183";
       public            postgres    false    209            �           2606    7835162    Alumnos Alumnos_email_key184 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key184" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key184";
       public            postgres    false    209            �           2606    7835164    Alumnos Alumnos_email_key185 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key185" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key185";
       public            postgres    false    209            �           2606    7835166    Alumnos Alumnos_email_key186 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key186" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key186";
       public            postgres    false    209            �           2606    7835666    Alumnos Alumnos_email_key187 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key187" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key187";
       public            postgres    false    209            �           2606    7835668    Alumnos Alumnos_email_key188 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key188" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key188";
       public            postgres    false    209            �           2606    7835670    Alumnos Alumnos_email_key189 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key189" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key189";
       public            postgres    false    209            �           2606    7833254    Alumnos Alumnos_email_key19 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key19" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key19";
       public            postgres    false    209            �           2606    7835672    Alumnos Alumnos_email_key190 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key190" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key190";
       public            postgres    false    209            �           2606    7835674    Alumnos Alumnos_email_key191 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key191" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key191";
       public            postgres    false    209            �           2606    7835556    Alumnos Alumnos_email_key192 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key192" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key192";
       public            postgres    false    209            �           2606    7833216    Alumnos Alumnos_email_key193 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key193" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key193";
       public            postgres    false    209            �           2606    7833218    Alumnos Alumnos_email_key194 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key194" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key194";
       public            postgres    false    209            �           2606    7833220    Alumnos Alumnos_email_key195 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key195" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key195";
       public            postgres    false    209            �           2606    7834960    Alumnos Alumnos_email_key196 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key196" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key196";
       public            postgres    false    209            �           2606    7835554    Alumnos Alumnos_email_key197 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key197" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key197";
       public            postgres    false    209            �           2606    7833176    Alumnos Alumnos_email_key198 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key198" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key198";
       public            postgres    false    209            �           2606    7833178    Alumnos Alumnos_email_key199 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key199" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key199";
       public            postgres    false    209            �           2606    7835432    Alumnos Alumnos_email_key2 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key2" UNIQUE (email);
 H   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key2";
       public            postgres    false    209                       2606    7833256    Alumnos Alumnos_email_key20 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key20" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key20";
       public            postgres    false    209                       2606    7833180    Alumnos Alumnos_email_key200 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key200" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key200";
       public            postgres    false    209                       2606    7833182    Alumnos Alumnos_email_key201 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key201" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key201";
       public            postgres    false    209                       2606    7833184    Alumnos Alumnos_email_key202 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key202" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key202";
       public            postgres    false    209            	           2606    7833444    Alumnos Alumnos_email_key203 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key203" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key203";
       public            postgres    false    209                       2606    7833618    Alumnos Alumnos_email_key204 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key204" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key204";
       public            postgres    false    209                       2606    7833446    Alumnos Alumnos_email_key205 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key205" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key205";
       public            postgres    false    209                       2606    7833448    Alumnos Alumnos_email_key206 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key206" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key206";
       public            postgres    false    209                       2606    7833450    Alumnos Alumnos_email_key207 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key207" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key207";
       public            postgres    false    209                       2606    7833452    Alumnos Alumnos_email_key208 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key208" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key208";
       public            postgres    false    209                       2606    7833454    Alumnos Alumnos_email_key209 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key209" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key209";
       public            postgres    false    209                       2606    7835170    Alumnos Alumnos_email_key21 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key21" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key21";
       public            postgres    false    209                       2606    7835062    Alumnos Alumnos_email_key210 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key210" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key210";
       public            postgres    false    209                       2606    7833372    Alumnos Alumnos_email_key211 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key211" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key211";
       public            postgres    false    209                       2606    7833374    Alumnos Alumnos_email_key212 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key212" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key212";
       public            postgres    false    209                       2606    7833836    Alumnos Alumnos_email_key213 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key213" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key213";
       public            postgres    false    209            !           2606    7833838    Alumnos Alumnos_email_key214 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key214" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key214";
       public            postgres    false    209            #           2606    7833144    Alumnos Alumnos_email_key215 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key215" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key215";
       public            postgres    false    209            %           2606    7833840    Alumnos Alumnos_email_key216 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key216" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key216";
       public            postgres    false    209            '           2606    7833842    Alumnos Alumnos_email_key217 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key217" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key217";
       public            postgres    false    209            )           2606    7833844    Alumnos Alumnos_email_key218 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key218" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key218";
       public            postgres    false    209            +           2606    7833846    Alumnos Alumnos_email_key219 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key219" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key219";
       public            postgres    false    209            -           2606    7835136    Alumnos Alumnos_email_key22 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key22" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key22";
       public            postgres    false    209            /           2606    7833848    Alumnos Alumnos_email_key220 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key220" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key220";
       public            postgres    false    209            1           2606    7833850    Alumnos Alumnos_email_key221 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key221" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key221";
       public            postgres    false    209            3           2606    7833852    Alumnos Alumnos_email_key222 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key222" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key222";
       public            postgres    false    209            5           2606    7833854    Alumnos Alumnos_email_key223 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key223" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key223";
       public            postgres    false    209            7           2606    7835142    Alumnos Alumnos_email_key224 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key224" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key224";
       public            postgres    false    209            9           2606    7833222    Alumnos Alumnos_email_key225 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key225" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key225";
       public            postgres    false    209            ;           2606    7832764    Alumnos Alumnos_email_key226 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key226" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key226";
       public            postgres    false    209            =           2606    7833224    Alumnos Alumnos_email_key227 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key227" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key227";
       public            postgres    false    209            ?           2606    7833226    Alumnos Alumnos_email_key228 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key228" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key228";
       public            postgres    false    209            A           2606    7833694    Alumnos Alumnos_email_key229 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key229" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key229";
       public            postgres    false    209            C           2606    7835138    Alumnos Alumnos_email_key23 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key23" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key23";
       public            postgres    false    209            E           2606    7833696    Alumnos Alumnos_email_key230 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key230" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key230";
       public            postgres    false    209            G           2606    7833698    Alumnos Alumnos_email_key231 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key231" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key231";
       public            postgres    false    209            I           2606    7832856    Alumnos Alumnos_email_key232 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key232" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key232";
       public            postgres    false    209            K           2606    7834950    Alumnos Alumnos_email_key233 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key233" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key233";
       public            postgres    false    209            M           2606    7834952    Alumnos Alumnos_email_key234 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key234" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key234";
       public            postgres    false    209            O           2606    7834954    Alumnos Alumnos_email_key235 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key235" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key235";
       public            postgres    false    209            Q           2606    7834956    Alumnos Alumnos_email_key236 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key236" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key236";
       public            postgres    false    209            S           2606    7833926    Alumnos Alumnos_email_key237 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key237" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key237";
       public            postgres    false    209            U           2606    7832686    Alumnos Alumnos_email_key238 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key238" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key238";
       public            postgres    false    209            W           2606    7833804    Alumnos Alumnos_email_key239 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key239" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key239";
       public            postgres    false    209            Y           2606    7834646    Alumnos Alumnos_email_key24 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key24" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key24";
       public            postgres    false    209            [           2606    7833806    Alumnos Alumnos_email_key240 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key240" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key240";
       public            postgres    false    209            ]           2606    7833808    Alumnos Alumnos_email_key241 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key241" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key241";
       public            postgres    false    209            _           2606    7835156    Alumnos Alumnos_email_key242 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key242" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key242";
       public            postgres    false    209            a           2606    7833810    Alumnos Alumnos_email_key243 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key243" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key243";
       public            postgres    false    209            c           2606    7833944    Alumnos Alumnos_email_key244 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key244" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key244";
       public            postgres    false    209            e           2606    7833946    Alumnos Alumnos_email_key245 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key245" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key245";
       public            postgres    false    209            g           2606    7833948    Alumnos Alumnos_email_key246 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key246" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key246";
       public            postgres    false    209            i           2606    7833950    Alumnos Alumnos_email_key247 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key247" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key247";
       public            postgres    false    209            k           2606    7835154    Alumnos Alumnos_email_key248 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key248" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key248";
       public            postgres    false    209            m           2606    7833648    Alumnos Alumnos_email_key249 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key249" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key249";
       public            postgres    false    209            o           2606    7835140    Alumnos Alumnos_email_key25 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key25" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key25";
       public            postgres    false    209            q           2606    7833650    Alumnos Alumnos_email_key250 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key250" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key250";
       public            postgres    false    209            s           2606    7833652    Alumnos Alumnos_email_key251 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key251" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key251";
       public            postgres    false    209            u           2606    7833654    Alumnos Alumnos_email_key252 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key252" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key252";
       public            postgres    false    209            w           2606    7833656    Alumnos Alumnos_email_key253 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key253" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key253";
       public            postgres    false    209            y           2606    7833328    Alumnos Alumnos_email_key254 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key254" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key254";
       public            postgres    false    209            {           2606    7833330    Alumnos Alumnos_email_key255 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key255" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key255";
       public            postgres    false    209            }           2606    7833332    Alumnos Alumnos_email_key256 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key256" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key256";
       public            postgres    false    209                       2606    7833334    Alumnos Alumnos_email_key257 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key257" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key257";
       public            postgres    false    209            �           2606    7835558    Alumnos Alumnos_email_key258 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key258" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key258";
       public            postgres    false    209            �           2606    7835560    Alumnos Alumnos_email_key259 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key259" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key259";
       public            postgres    false    209            �           2606    7833664    Alumnos Alumnos_email_key26 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key26" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key26";
       public            postgres    false    209            �           2606    7833818    Alumnos Alumnos_email_key260 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key260" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key260";
       public            postgres    false    209            �           2606    7835562    Alumnos Alumnos_email_key261 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key261" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key261";
       public            postgres    false    209            �           2606    7834738    Alumnos Alumnos_email_key262 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key262" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key262";
       public            postgres    false    209            �           2606    7834740    Alumnos Alumnos_email_key263 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key263" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key263";
       public            postgres    false    209            �           2606    7834742    Alumnos Alumnos_email_key264 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key264" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key264";
       public            postgres    false    209            �           2606    7834744    Alumnos Alumnos_email_key265 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key265" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key265";
       public            postgres    false    209            �           2606    7835462    Alumnos Alumnos_email_key266 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key266" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key266";
       public            postgres    false    209            �           2606    7834746    Alumnos Alumnos_email_key267 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key267" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key267";
       public            postgres    false    209            �           2606    7834748    Alumnos Alumnos_email_key268 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key268" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key268";
       public            postgres    false    209            �           2606    7834750    Alumnos Alumnos_email_key269 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key269" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key269";
       public            postgres    false    209            �           2606    7833458    Alumnos Alumnos_email_key27 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key27" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key27";
       public            postgres    false    209            �           2606    7834752    Alumnos Alumnos_email_key270 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key270" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key270";
       public            postgres    false    209            �           2606    7834754    Alumnos Alumnos_email_key271 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key271" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key271";
       public            postgres    false    209            �           2606    7834756    Alumnos Alumnos_email_key272 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key272" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key272";
       public            postgres    false    209            �           2606    7835076    Alumnos Alumnos_email_key273 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key273" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key273";
       public            postgres    false    209            �           2606    7835078    Alumnos Alumnos_email_key274 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key274" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key274";
       public            postgres    false    209            �           2606    7833952    Alumnos Alumnos_email_key275 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key275" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key275";
       public            postgres    false    209            �           2606    7832884    Alumnos Alumnos_email_key276 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key276" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key276";
       public            postgres    false    209            �           2606    7833954    Alumnos Alumnos_email_key277 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key277" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key277";
       public            postgres    false    209            �           2606    7834090    Alumnos Alumnos_email_key278 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key278" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key278";
       public            postgres    false    209            �           2606    7834092    Alumnos Alumnos_email_key279 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key279" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key279";
       public            postgres    false    209            �           2606    7833460    Alumnos Alumnos_email_key28 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key28" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key28";
       public            postgres    false    209            �           2606    7834094    Alumnos Alumnos_email_key280 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key280" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key280";
       public            postgres    false    209            �           2606    7834096    Alumnos Alumnos_email_key281 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key281" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key281";
       public            postgres    false    209            �           2606    7834098    Alumnos Alumnos_email_key282 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key282" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key282";
       public            postgres    false    209            �           2606    7834100    Alumnos Alumnos_email_key283 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key283" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key283";
       public            postgres    false    209            �           2606    7834102    Alumnos Alumnos_email_key284 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key284" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key284";
       public            postgres    false    209            �           2606    7835664    Alumnos Alumnos_email_key285 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key285" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key285";
       public            postgres    false    209            �           2606    7835628    Alumnos Alumnos_email_key286 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key286" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key286";
       public            postgres    false    209            �           2606    7835630    Alumnos Alumnos_email_key287 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key287" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key287";
       public            postgres    false    209            �           2606    7835632    Alumnos Alumnos_email_key288 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key288" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key288";
       public            postgres    false    209            �           2606    7835662    Alumnos Alumnos_email_key289 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key289" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key289";
       public            postgres    false    209            �           2606    7833462    Alumnos Alumnos_email_key29 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key29" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key29";
       public            postgres    false    209            �           2606    7835634    Alumnos Alumnos_email_key290 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key290" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key290";
       public            postgres    false    209            �           2606    7835656    Alumnos Alumnos_email_key291 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key291" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key291";
       public            postgres    false    209            �           2606    7835658    Alumnos Alumnos_email_key292 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key292" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key292";
       public            postgres    false    209            �           2606    7835660    Alumnos Alumnos_email_key293 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key293" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key293";
       public            postgres    false    209            �           2606    7833624    Alumnos Alumnos_email_key294 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key294" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key294";
       public            postgres    false    209            �           2606    7832828    Alumnos Alumnos_email_key295 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key295" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key295";
       public            postgres    false    209            �           2606    7833626    Alumnos Alumnos_email_key296 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key296" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key296";
       public            postgres    false    209            �           2606    7833628    Alumnos Alumnos_email_key297 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key297" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key297";
       public            postgres    false    209            �           2606    7833630    Alumnos Alumnos_email_key298 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key298" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key298";
       public            postgres    false    209            �           2606    7835014    Alumnos Alumnos_email_key299 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key299" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key299";
       public            postgres    false    209            �           2606    7835434    Alumnos Alumnos_email_key3 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key3" UNIQUE (email);
 H   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key3";
       public            postgres    false    209            �           2606    7834644    Alumnos Alumnos_email_key30 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key30" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key30";
       public            postgres    false    209            �           2606    7833632    Alumnos Alumnos_email_key300 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key300" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key300";
       public            postgres    false    209            �           2606    7833638    Alumnos Alumnos_email_key301 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key301" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key301";
       public            postgres    false    209            �           2606    7833640    Alumnos Alumnos_email_key302 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key302" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key302";
       public            postgres    false    209            �           2606    7833164    Alumnos Alumnos_email_key303 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key303" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key303";
       public            postgres    false    209            �           2606    7835838    Alumnos Alumnos_email_key304 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key304" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key304";
       public            postgres    false    209            �           2606    7832834    Alumnos Alumnos_email_key305 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key305" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key305";
       public            postgres    false    209            �           2606    7832836    Alumnos Alumnos_email_key306 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key306" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key306";
       public            postgres    false    209            �           2606    7835836    Alumnos Alumnos_email_key307 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key307" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key307";
       public            postgres    false    209            �           2606    7832838    Alumnos Alumnos_email_key308 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key308" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key308";
       public            postgres    false    209            �           2606    7832840    Alumnos Alumnos_email_key309 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key309" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key309";
       public            postgres    false    209            �           2606    7836014    Alumnos Alumnos_email_key31 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key31" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key31";
       public            postgres    false    209            �           2606    7832842    Alumnos Alumnos_email_key310 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key310" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key310";
       public            postgres    false    209            �           2606    7832844    Alumnos Alumnos_email_key311 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key311" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key311";
       public            postgres    false    209            �           2606    7832846    Alumnos Alumnos_email_key312 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key312" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key312";
       public            postgres    false    209            �           2606    7834582    Alumnos Alumnos_email_key313 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key313" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key313";
       public            postgres    false    209            �           2606    7834584    Alumnos Alumnos_email_key314 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key314" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key314";
       public            postgres    false    209                       2606    7835834    Alumnos Alumnos_email_key315 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key315" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key315";
       public            postgres    false    209                       2606    7835346    Alumnos Alumnos_email_key316 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key316" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key316";
       public            postgres    false    209                       2606    7835348    Alumnos Alumnos_email_key317 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key317" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key317";
       public            postgres    false    209                       2606    7835350    Alumnos Alumnos_email_key318 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key318" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key318";
       public            postgres    false    209            	           2606    7835832    Alumnos Alumnos_email_key319 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key319" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key319";
       public            postgres    false    209                       2606    7833122    Alumnos Alumnos_email_key32 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key32" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key32";
       public            postgres    false    209                       2606    7836092    Alumnos Alumnos_email_key320 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key320" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key320";
       public            postgres    false    209                       2606    7834026    Alumnos Alumnos_email_key321 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key321" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key321";
       public            postgres    false    209                       2606    7835828    Alumnos Alumnos_email_key322 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key322" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key322";
       public            postgres    false    209                       2606    7835830    Alumnos Alumnos_email_key323 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key323" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key323";
       public            postgres    false    209                       2606    7835676    Alumnos Alumnos_email_key324 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key324" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key324";
       public            postgres    false    209                       2606    7832908    Alumnos Alumnos_email_key325 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key325" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key325";
       public            postgres    false    209                       2606    7832910    Alumnos Alumnos_email_key326 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key326" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key326";
       public            postgres    false    209                       2606    7834326    Alumnos Alumnos_email_key327 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key327" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key327";
       public            postgres    false    209                       2606    7834328    Alumnos Alumnos_email_key328 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key328" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key328";
       public            postgres    false    209                       2606    7834330    Alumnos Alumnos_email_key329 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key329" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key329";
       public            postgres    false    209            !           2606    7833124    Alumnos Alumnos_email_key33 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key33" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key33";
       public            postgres    false    209            #           2606    7833166    Alumnos Alumnos_email_key330 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key330" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key330";
       public            postgres    false    209            %           2606    7833168    Alumnos Alumnos_email_key331 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key331" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key331";
       public            postgres    false    209            '           2606    7833170    Alumnos Alumnos_email_key332 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key332" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key332";
       public            postgres    false    209            )           2606    7833172    Alumnos Alumnos_email_key333 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key333" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key333";
       public            postgres    false    209            +           2606    7833214    Alumnos Alumnos_email_key334 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key334" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key334";
       public            postgres    false    209            -           2606    7833174    Alumnos Alumnos_email_key335 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key335" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key335";
       public            postgres    false    209            /           2606    7833230    Alumnos Alumnos_email_key336 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key336" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key336";
       public            postgres    false    209            1           2606    7833232    Alumnos Alumnos_email_key337 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key337" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key337";
       public            postgres    false    209            3           2606    7833234    Alumnos Alumnos_email_key338 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key338" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key338";
       public            postgres    false    209            5           2606    7833236    Alumnos Alumnos_email_key339 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key339" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key339";
       public            postgres    false    209            7           2606    7833126    Alumnos Alumnos_email_key34 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key34" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key34";
       public            postgres    false    209            9           2606    7833212    Alumnos Alumnos_email_key340 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key340" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key340";
       public            postgres    false    209            ;           2606    7833238    Alumnos Alumnos_email_key341 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key341" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key341";
       public            postgres    false    209            =           2606    7833240    Alumnos Alumnos_email_key342 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key342" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key342";
       public            postgres    false    209            ?           2606    7833242    Alumnos Alumnos_email_key343 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key343" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key343";
       public            postgres    false    209            A           2606    7833244    Alumnos Alumnos_email_key344 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key344" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key344";
       public            postgres    false    209            C           2606    7833210    Alumnos Alumnos_email_key345 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key345" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key345";
       public            postgres    false    209            E           2606    7833246    Alumnos Alumnos_email_key346 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key346" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key346";
       public            postgres    false    209            G           2606    7836002    Alumnos Alumnos_email_key347 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key347" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key347";
       public            postgres    false    209            I           2606    7833248    Alumnos Alumnos_email_key348 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key348" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key348";
       public            postgres    false    209            K           2606    7833988    Alumnos Alumnos_email_key349 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key349" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key349";
       public            postgres    false    209            M           2606    7833128    Alumnos Alumnos_email_key35 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key35" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key35";
       public            postgres    false    209            O           2606    7833990    Alumnos Alumnos_email_key350 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key350" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key350";
       public            postgres    false    209            Q           2606    7835054    Alumnos Alumnos_email_key351 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key351" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key351";
       public            postgres    false    209            S           2606    7833700    Alumnos Alumnos_email_key352 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key352" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key352";
       public            postgres    false    209            U           2606    7834160    Alumnos Alumnos_email_key353 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key353" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key353";
       public            postgres    false    209            W           2606    7835050    Alumnos Alumnos_email_key354 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key354" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key354";
       public            postgres    false    209            Y           2606    7835052    Alumnos Alumnos_email_key355 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key355" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key355";
       public            postgres    false    209            [           2606    7832858    Alumnos Alumnos_email_key356 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key356" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key356";
       public            postgres    false    209            ]           2606    7832860    Alumnos Alumnos_email_key357 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key357" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key357";
       public            postgres    false    209            _           2606    7832862    Alumnos Alumnos_email_key358 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key358" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key358";
       public            postgres    false    209            a           2606    7833356    Alumnos Alumnos_email_key359 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key359" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key359";
       public            postgres    false    209            c           2606    7835012    Alumnos Alumnos_email_key36 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key36" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key36";
       public            postgres    false    209            e           2606    7832864    Alumnos Alumnos_email_key360 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key360" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key360";
       public            postgres    false    209            g           2606    7832866    Alumnos Alumnos_email_key361 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key361" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key361";
       public            postgres    false    209            i           2606    7832868    Alumnos Alumnos_email_key362 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key362" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key362";
       public            postgres    false    209            k           2606    7832870    Alumnos Alumnos_email_key363 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key363" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key363";
       public            postgres    false    209            m           2606    7832872    Alumnos Alumnos_email_key364 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key364" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key364";
       public            postgres    false    209            o           2606    7832874    Alumnos Alumnos_email_key365 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key365" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key365";
       public            postgres    false    209            q           2606    7833354    Alumnos Alumnos_email_key366 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key366" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key366";
       public            postgres    false    209            s           2606    7833702    Alumnos Alumnos_email_key367 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key367" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key367";
       public            postgres    false    209            u           2606    7833704    Alumnos Alumnos_email_key368 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key368" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key368";
       public            postgres    false    209            w           2606    7833706    Alumnos Alumnos_email_key369 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key369" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key369";
       public            postgres    false    209            y           2606    7833368    Alumnos Alumnos_email_key37 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key37" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key37";
       public            postgres    false    209            {           2606    7835400    Alumnos Alumnos_email_key370 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key370" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key370";
       public            postgres    false    209            }           2606    7832920    Alumnos Alumnos_email_key371 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key371" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key371";
       public            postgres    false    209                       2606    7832922    Alumnos Alumnos_email_key372 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key372" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key372";
       public            postgres    false    209            �           2606    7832924    Alumnos Alumnos_email_key373 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key373" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key373";
       public            postgres    false    209            �           2606    7833162    Alumnos Alumnos_email_key374 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key374" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key374";
       public            postgres    false    209            �           2606    7832880    Alumnos Alumnos_email_key375 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key375" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key375";
       public            postgres    false    209            �           2606    7835398    Alumnos Alumnos_email_key376 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key376" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key376";
       public            postgres    false    209            �           2606    7832882    Alumnos Alumnos_email_key377 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key377" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key377";
       public            postgres    false    209            �           2606    7835048    Alumnos Alumnos_email_key378 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key378" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key378";
       public            postgres    false    209            �           2606    7835382    Alumnos Alumnos_email_key379 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key379" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key379";
       public            postgres    false    209            �           2606    7833370    Alumnos Alumnos_email_key38 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key38" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key38";
       public            postgres    false    209            �           2606    7835384    Alumnos Alumnos_email_key380 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key380" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key380";
       public            postgres    false    209            �           2606    7835396    Alumnos Alumnos_email_key381 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key381" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key381";
       public            postgres    false    209            �           2606    7835386    Alumnos Alumnos_email_key382 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key382" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key382";
       public            postgres    false    209            �           2606    7835388    Alumnos Alumnos_email_key383 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key383" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key383";
       public            postgres    false    209            �           2606    7835390    Alumnos Alumnos_email_key384 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key384" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key384";
       public            postgres    false    209            �           2606    7835392    Alumnos Alumnos_email_key385 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key385" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key385";
       public            postgres    false    209            �           2606    7835394    Alumnos Alumnos_email_key386 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key386" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key386";
       public            postgres    false    209            �           2606    7833604    Alumnos Alumnos_email_key387 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key387" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key387";
       public            postgres    false    209            �           2606    7833692    Alumnos Alumnos_email_key388 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key388" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key388";
       public            postgres    false    209            �           2606    7833616    Alumnos Alumnos_email_key389 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key389" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key389";
       public            postgres    false    209            �           2606    7833146    Alumnos Alumnos_email_key39 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key39" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key39";
       public            postgres    false    209            �           2606    7833682    Alumnos Alumnos_email_key390 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key390" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key390";
       public            postgres    false    209            �           2606    7833684    Alumnos Alumnos_email_key391 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key391" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key391";
       public            postgres    false    209            �           2606    7833686    Alumnos Alumnos_email_key392 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key392" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key392";
       public            postgres    false    209            �           2606    7833688    Alumnos Alumnos_email_key393 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key393" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key393";
       public            postgres    false    209            �           2606    7833690    Alumnos Alumnos_email_key394 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key394" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key394";
       public            postgres    false    209            �           2606    7833602    Alumnos Alumnos_email_key395 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key395" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key395";
       public            postgres    false    209            �           2606    7835016    Alumnos Alumnos_email_key396 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key396" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key396";
       public            postgres    false    209            �           2606    7835018    Alumnos Alumnos_email_key397 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key397" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key397";
       public            postgres    false    209            �           2606    7835334    Alumnos Alumnos_email_key398 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key398" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key398";
       public            postgres    false    209            �           2606    7833600    Alumnos Alumnos_email_key399 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key399" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key399";
       public            postgres    false    209            �           2606    7835426    Alumnos Alumnos_email_key4 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key4" UNIQUE (email);
 H   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key4";
       public            postgres    false    209            �           2606    7833148    Alumnos Alumnos_email_key40 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key40" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key40";
       public            postgres    false    209            �           2606    7835336    Alumnos Alumnos_email_key400 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key400" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key400";
       public            postgres    false    209            �           2606    7835288    Alumnos Alumnos_email_key401 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key401" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key401";
       public            postgres    false    209            �           2606    7835290    Alumnos Alumnos_email_key402 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key402" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key402";
       public            postgres    false    209            �           2606    7833916    Alumnos Alumnos_email_key403 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key403" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key403";
       public            postgres    false    209            �           2606    7833360    Alumnos Alumnos_email_key404 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key404" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key404";
       public            postgres    false    209            �           2606    7833362    Alumnos Alumnos_email_key405 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key405" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key405";
       public            postgres    false    209            �           2606    7833364    Alumnos Alumnos_email_key406 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key406" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key406";
       public            postgres    false    209            �           2606    7833366    Alumnos Alumnos_email_key407 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key407" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key407";
       public            postgres    false    209            �           2606    7832772    Alumnos Alumnos_email_key408 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key408" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key408";
       public            postgres    false    209            �           2606    7832822    Alumnos Alumnos_email_key409 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key409" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key409";
       public            postgres    false    209            �           2606    7836012    Alumnos Alumnos_email_key41 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key41" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key41";
       public            postgres    false    209            �           2606    7832774    Alumnos Alumnos_email_key410 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key410" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key410";
       public            postgres    false    209            �           2606    7832776    Alumnos Alumnos_email_key411 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key411" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key411";
       public            postgres    false    209            �           2606    7832820    Alumnos Alumnos_email_key412 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key412" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key412";
       public            postgres    false    209            �           2606    7832778    Alumnos Alumnos_email_key413 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key413" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key413";
       public            postgres    false    209            �           2606    7832816    Alumnos Alumnos_email_key414 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key414" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key414";
       public            postgres    false    209            �           2606    7832818    Alumnos Alumnos_email_key415 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key415" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key415";
       public            postgres    false    209            �           2606    7832696    Alumnos Alumnos_email_key416 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key416" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key416";
       public            postgres    false    209            �           2606    7832698    Alumnos Alumnos_email_key417 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key417" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key417";
       public            postgres    false    209            �           2606    7832700    Alumnos Alumnos_email_key418 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key418" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key418";
       public            postgres    false    209            �           2606    7832702    Alumnos Alumnos_email_key419 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key419" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key419";
       public            postgres    false    209            �           2606    7836074    Alumnos Alumnos_email_key42 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key42" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key42";
       public            postgres    false    209            �           2606    7832854    Alumnos Alumnos_email_key420 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key420" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key420";
       public            postgres    false    209            �           2606    7834260    Alumnos Alumnos_email_key421 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key421" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key421";
       public            postgres    false    209            �           2606    7835920    Alumnos Alumnos_email_key422 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key422" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key422";
       public            postgres    false    209            �           2606    7833142    Alumnos Alumnos_email_key423 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key423" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key423";
       public            postgres    false    209            �           2606    7835284    Alumnos Alumnos_email_key424 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key424" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key424";
       public            postgres    false    209            �           2606    7835286    Alumnos Alumnos_email_key425 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key425" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key425";
       public            postgres    false    209            �           2606    7832850    Alumnos Alumnos_email_key426 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key426" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key426";
       public            postgres    false    209            �           2606    7832852    Alumnos Alumnos_email_key427 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key427" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key427";
       public            postgres    false    209            �           2606    7835602    Alumnos Alumnos_email_key428 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key428" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key428";
       public            postgres    false    209            �           2606    7833964    Alumnos Alumnos_email_key429 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key429" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key429";
       public            postgres    false    209            �           2606    7834156    Alumnos Alumnos_email_key43 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key43" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key43";
       public            postgres    false    209                       2606    7833966    Alumnos Alumnos_email_key430 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key430" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key430";
       public            postgres    false    209                       2606    7833968    Alumnos Alumnos_email_key431 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key431" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key431";
       public            postgres    false    209                       2606    7835332    Alumnos Alumnos_email_key432 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key432" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key432";
       public            postgres    false    209                       2606    7833970    Alumnos Alumnos_email_key433 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key433" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key433";
       public            postgres    false    209            	           2606    7833972    Alumnos Alumnos_email_key434 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key434" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key434";
       public            postgres    false    209                       2606    7835330    Alumnos Alumnos_email_key435 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key435" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key435";
       public            postgres    false    209                       2606    7833252    Alumnos Alumnos_email_key436 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key436" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key436";
       public            postgres    false    209                       2606    7835174    Alumnos Alumnos_email_key437 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key437" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key437";
       public            postgres    false    209                       2606    7835176    Alumnos Alumnos_email_key438 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key438" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key438";
       public            postgres    false    209                       2606    7833250    Alumnos Alumnos_email_key439 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key439" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key439";
       public            postgres    false    209                       2606    7834158    Alumnos Alumnos_email_key44 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key44" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key44";
       public            postgres    false    209                       2606    7835918    Alumnos Alumnos_email_key440 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key440" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key440";
       public            postgres    false    209                       2606    7832750    Alumnos Alumnos_email_key441 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key441" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key441";
       public            postgres    false    209                       2606    7832752    Alumnos Alumnos_email_key442 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key442" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key442";
       public            postgres    false    209                       2606    7832754    Alumnos Alumnos_email_key443 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key443" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key443";
       public            postgres    false    209                       2606    7835916    Alumnos Alumnos_email_key444 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key444" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key444";
       public            postgres    false    209            !           2606    7833680    Alumnos Alumnos_email_key445 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key445" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key445";
       public            postgres    false    209            #           2606    7833320    Alumnos Alumnos_email_key446 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key446" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key446";
       public            postgres    false    209            %           2606    7833322    Alumnos Alumnos_email_key447 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key447" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key447";
       public            postgres    false    209            '           2606    7833324    Alumnos Alumnos_email_key448 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key448" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key448";
       public            postgres    false    209            )           2606    7833678    Alumnos Alumnos_email_key449 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key449" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key449";
       public            postgres    false    209            +           2606    7833318    Alumnos Alumnos_email_key45 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key45" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key45";
       public            postgres    false    209            -           2606    7833326    Alumnos Alumnos_email_key450 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key450" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key450";
       public            postgres    false    209            /           2606    7834244    Alumnos Alumnos_email_key451 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key451" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key451";
       public            postgres    false    209            1           2606    7834246    Alumnos Alumnos_email_key452 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key452" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key452";
       public            postgres    false    209            3           2606    7833676    Alumnos Alumnos_email_key453 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key453" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key453";
       public            postgres    false    209            5           2606    7834248    Alumnos Alumnos_email_key454 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key454" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key454";
       public            postgres    false    209            7           2606    7834150    Alumnos Alumnos_email_key455 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key455" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key455";
       public            postgres    false    209            9           2606    7834250    Alumnos Alumnos_email_key456 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key456" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key456";
       public            postgres    false    209            ;           2606    7834252    Alumnos Alumnos_email_key457 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key457" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key457";
       public            postgres    false    209            =           2606    7833658    Alumnos Alumnos_email_key458 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key458" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key458";
       public            postgres    false    209            ?           2606    7834148    Alumnos Alumnos_email_key459 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key459" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key459";
       public            postgres    false    209            A           2606    7833456    Alumnos Alumnos_email_key46 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key46" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key46";
       public            postgres    false    209            C           2606    7833512    Alumnos Alumnos_email_key460 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key460" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key460";
       public            postgres    false    209            E           2606    7834280    Alumnos Alumnos_email_key461 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key461" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key461";
       public            postgres    false    209            G           2606    7835840    Alumnos Alumnos_email_key462 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key462" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key462";
       public            postgres    false    209            I           2606    7833510    Alumnos Alumnos_email_key463 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key463" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key463";
       public            postgres    false    209            K           2606    7835842    Alumnos Alumnos_email_key464 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key464" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key464";
       public            postgres    false    209            M           2606    7835950    Alumnos Alumnos_email_key465 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key465" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key465";
       public            postgres    false    209            O           2606    7835952    Alumnos Alumnos_email_key466 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key466" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key466";
       public            postgres    false    209            Q           2606    7835954    Alumnos Alumnos_email_key467 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key467" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key467";
       public            postgres    false    209            S           2606    7835966    Alumnos Alumnos_email_key468 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key468" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key468";
       public            postgres    false    209            U           2606    7835956    Alumnos Alumnos_email_key469 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key469" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key469";
       public            postgres    false    209            W           2606    7836010    Alumnos Alumnos_email_key47 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key47" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key47";
       public            postgres    false    209            Y           2606    7835958    Alumnos Alumnos_email_key470 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key470" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key470";
       public            postgres    false    209            [           2606    7835960    Alumnos Alumnos_email_key471 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key471" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key471";
       public            postgres    false    209            ]           2606    7835962    Alumnos Alumnos_email_key472 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key472" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key472";
       public            postgres    false    209            _           2606    7835964    Alumnos Alumnos_email_key473 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key473" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key473";
       public            postgres    false    209            a           2606    7835636    Alumnos Alumnos_email_key474 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key474" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key474";
       public            postgres    false    209            c           2606    7835638    Alumnos Alumnos_email_key475 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key475" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key475";
       public            postgres    false    209            e           2606    7835654    Alumnos Alumnos_email_key476 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key476" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key476";
       public            postgres    false    209            g           2606    7835640    Alumnos Alumnos_email_key477 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key477" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key477";
       public            postgres    false    209            i           2606    7835642    Alumnos Alumnos_email_key478 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key478" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key478";
       public            postgres    false    209            k           2606    7835644    Alumnos Alumnos_email_key479 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key479" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key479";
       public            postgres    false    209            m           2606    7836076    Alumnos Alumnos_email_key48 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key48" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key48";
       public            postgres    false    209            o           2606    7835646    Alumnos Alumnos_email_key480 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key480" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key480";
       public            postgres    false    209            q           2606    7835648    Alumnos Alumnos_email_key481 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key481" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key481";
       public            postgres    false    209            s           2606    7835650    Alumnos Alumnos_email_key482 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key482" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key482";
       public            postgres    false    209            u           2606    7835652    Alumnos Alumnos_email_key483 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key483" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key483";
       public            postgres    false    209            w           2606    7836018    Alumnos Alumnos_email_key484 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key484" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key484";
       public            postgres    false    209            y           2606    7836020    Alumnos Alumnos_email_key485 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key485" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key485";
       public            postgres    false    209            {           2606    7836022    Alumnos Alumnos_email_key486 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key486" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key486";
       public            postgres    false    209            }           2606    7833986    Alumnos Alumnos_email_key487 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key487" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key487";
       public            postgres    false    209                       2606    7836024    Alumnos Alumnos_email_key488 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key488" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key488";
       public            postgres    false    209            �           2606    7836026    Alumnos Alumnos_email_key489 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key489" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key489";
       public            postgres    false    209            �           2606    7836078    Alumnos Alumnos_email_key49 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key49" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key49";
       public            postgres    false    209            �           2606    7836028    Alumnos Alumnos_email_key490 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key490" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key490";
       public            postgres    false    209            �           2606    7836030    Alumnos Alumnos_email_key491 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key491" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key491";
       public            postgres    false    209            �           2606    7833984    Alumnos Alumnos_email_key492 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key492" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key492";
       public            postgres    false    209            �           2606    7836032    Alumnos Alumnos_email_key493 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key493" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key493";
       public            postgres    false    209            �           2606    7836034    Alumnos Alumnos_email_key494 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key494" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key494";
       public            postgres    false    209            �           2606    7833982    Alumnos Alumnos_email_key495 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key495" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key495";
       public            postgres    false    209            �           2606    7836036    Alumnos Alumnos_email_key496 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key496" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key496";
       public            postgres    false    209            �           2606    7836038    Alumnos Alumnos_email_key497 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key497" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key497";
       public            postgres    false    209            �           2606    7836040    Alumnos Alumnos_email_key498 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key498" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key498";
       public            postgres    false    209            �           2606    7836042    Alumnos Alumnos_email_key499 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key499" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key499";
       public            postgres    false    209            �           2606    7835436    Alumnos Alumnos_email_key5 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key5" UNIQUE (email);
 H   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key5";
       public            postgres    false    209            �           2606    7836016    Alumnos Alumnos_email_key50 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key50" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key50";
       public            postgres    false    209            �           2606    7832918    Alumnos Alumnos_email_key500 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key500" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key500";
       public            postgres    false    209            �           2606    7836044    Alumnos Alumnos_email_key501 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key501" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key501";
       public            postgres    false    209            �           2606    7836046    Alumnos Alumnos_email_key502 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key502" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key502";
       public            postgres    false    209            �           2606    7834290    Alumnos Alumnos_email_key503 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key503" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key503";
       public            postgres    false    209            �           2606    7836052    Alumnos Alumnos_email_key504 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key504" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key504";
       public            postgres    false    209            �           2606    7836054    Alumnos Alumnos_email_key505 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key505" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key505";
       public            postgres    false    209            �           2606    7833552    Alumnos Alumnos_email_key506 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key506" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key506";
       public            postgres    false    209            �           2606    7833914    Alumnos Alumnos_email_key507 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key507" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key507";
       public            postgres    false    209            �           2606    7833554    Alumnos Alumnos_email_key508 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key508" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key508";
       public            postgres    false    209            �           2606    7833912    Alumnos Alumnos_email_key509 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key509" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key509";
       public            postgres    false    209            �           2606    7833890    Alumnos Alumnos_email_key51 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key51" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key51";
       public            postgres    false    209            �           2606    7833556    Alumnos Alumnos_email_key510 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key510" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key510";
       public            postgres    false    209            �           2606    7833472    Alumnos Alumnos_email_key511 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key511" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key511";
       public            postgres    false    209            �           2606    7833474    Alumnos Alumnos_email_key512 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key512" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key512";
       public            postgres    false    209            �           2606    7833476    Alumnos Alumnos_email_key513 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key513" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key513";
       public            postgres    false    209            �           2606    7833478    Alumnos Alumnos_email_key514 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key514" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key514";
       public            postgres    false    209            �           2606    7833956    Alumnos Alumnos_email_key515 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key515" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key515";
       public            postgres    false    209            �           2606    7834736    Alumnos Alumnos_email_key516 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key516" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key516";
       public            postgres    false    209            �           2606    7833958    Alumnos Alumnos_email_key517 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key517" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key517";
       public            postgres    false    209            �           2606    7833960    Alumnos Alumnos_email_key518 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key518" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key518";
       public            postgres    false    209            �           2606    7834734    Alumnos Alumnos_email_key519 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key519" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key519";
       public            postgres    false    209            �           2606    7833892    Alumnos Alumnos_email_key52 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key52" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key52";
       public            postgres    false    209            �           2606    7834842    Alumnos Alumnos_email_key520 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key520" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key520";
       public            postgres    false    209            �           2606    7834732    Alumnos Alumnos_email_key521 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key521" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key521";
       public            postgres    false    209            �           2606    7834844    Alumnos Alumnos_email_key522 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key522" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key522";
       public            postgres    false    209            �           2606    7834846    Alumnos Alumnos_email_key523 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key523" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key523";
       public            postgres    false    209            �           2606    7832814    Alumnos Alumnos_email_key524 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key524" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key524";
       public            postgres    false    209            �           2606    7834848    Alumnos Alumnos_email_key525 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key525" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key525";
       public            postgres    false    209            �           2606    7834850    Alumnos Alumnos_email_key526 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key526" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key526";
       public            postgres    false    209            �           2606    7834852    Alumnos Alumnos_email_key527 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key527" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key527";
       public            postgres    false    209            �           2606    7834854    Alumnos Alumnos_email_key528 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key528" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key528";
       public            postgres    false    209            �           2606    7833962    Alumnos Alumnos_email_key529 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key529" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key529";
       public            postgres    false    209            �           2606    7833894    Alumnos Alumnos_email_key53 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key53" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key53";
       public            postgres    false    209            �           2606    7834856    Alumnos Alumnos_email_key530 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key530" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key530";
       public            postgres    false    209            �           2606    7834858    Alumnos Alumnos_email_key531 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key531" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key531";
       public            postgres    false    209            �           2606    7834860    Alumnos Alumnos_email_key532 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key532" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key532";
       public            postgres    false    209            �           2606    7833412    Alumnos Alumnos_email_key533 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key533" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key533";
       public            postgres    false    209            �           2606    7833352    Alumnos Alumnos_email_key534 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key534" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key534";
       public            postgres    false    209            �           2606    7833414    Alumnos Alumnos_email_key535 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key535" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key535";
       public            postgres    false    209            �           2606    7833344    Alumnos Alumnos_email_key536 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key536" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key536";
       public            postgres    false    209            �           2606    7833346    Alumnos Alumnos_email_key537 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key537" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key537";
       public            postgres    false    209            �           2606    7833348    Alumnos Alumnos_email_key538 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key538" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key538";
       public            postgres    false    209            �           2606    7833350    Alumnos Alumnos_email_key539 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key539" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key539";
       public            postgres    false    209            �           2606    7833896    Alumnos Alumnos_email_key54 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key54" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key54";
       public            postgres    false    209            �           2606    7833642    Alumnos Alumnos_email_key540 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key540" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key540";
       public            postgres    false    209            �           2606    7833644    Alumnos Alumnos_email_key541 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key541" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key541";
       public            postgres    false    209            �           2606    7833102    Alumnos Alumnos_email_key542 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key542" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key542";
       public            postgres    false    209            �           2606    7833646    Alumnos Alumnos_email_key543 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key543" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key543";
       public            postgres    false    209            �           2606    7833090    Alumnos Alumnos_email_key544 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key544" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key544";
       public            postgres    false    209            �           2606    7833092    Alumnos Alumnos_email_key545 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key545" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key545";
       public            postgres    false    209                       2606    7833094    Alumnos Alumnos_email_key546 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key546" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key546";
       public            postgres    false    209                       2606    7833096    Alumnos Alumnos_email_key547 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key547" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key547";
       public            postgres    false    209                       2606    7833098    Alumnos Alumnos_email_key548 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key548" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key548";
       public            postgres    false    209                       2606    7833100    Alumnos Alumnos_email_key549 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key549" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key549";
       public            postgres    false    209            	           2606    7833898    Alumnos Alumnos_email_key55 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key55" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key55";
       public            postgres    false    209                       2606    7833980    Alumnos Alumnos_email_key550 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key550" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key550";
       public            postgres    false    209                       2606    7832912    Alumnos Alumnos_email_key551 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key551" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key551";
       public            postgres    false    209                       2606    7833992    Alumnos Alumnos_email_key552 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key552" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key552";
       public            postgres    false    209                       2606    7833994    Alumnos Alumnos_email_key553 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key553" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key553";
       public            postgres    false    209                       2606    7833996    Alumnos Alumnos_email_key554 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key554" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key554";
       public            postgres    false    209                       2606    7833978    Alumnos Alumnos_email_key555 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key555" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key555";
       public            postgres    false    209                       2606    7833998    Alumnos Alumnos_email_key556 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key556" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key556";
       public            postgres    false    209                       2606    7834000    Alumnos Alumnos_email_key557 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key557" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key557";
       public            postgres    false    209                       2606    7834002    Alumnos Alumnos_email_key558 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key558" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key558";
       public            postgres    false    209                       2606    7834004    Alumnos Alumnos_email_key559 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key559" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key559";
       public            postgres    false    209                       2606    7833900    Alumnos Alumnos_email_key56 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key56" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key56";
       public            postgres    false    209            !           2606    7833716    Alumnos Alumnos_email_key560 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key560" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key560";
       public            postgres    false    209            #           2606    7833928    Alumnos Alumnos_email_key561 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key561" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key561";
       public            postgres    false    209            %           2606    7833930    Alumnos Alumnos_email_key562 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key562" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key562";
       public            postgres    false    209            '           2606    7833020    Alumnos Alumnos_email_key563 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key563" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key563";
       public            postgres    false    209            )           2606    7833932    Alumnos Alumnos_email_key564 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key564" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key564";
       public            postgres    false    209            +           2606    7833934    Alumnos Alumnos_email_key565 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key565" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key565";
       public            postgres    false    209            -           2606    7833936    Alumnos Alumnos_email_key566 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key566" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key566";
       public            postgres    false    209            /           2606    7833938    Alumnos Alumnos_email_key567 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key567" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key567";
       public            postgres    false    209            1           2606    7833940    Alumnos Alumnos_email_key568 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key568" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key568";
       public            postgres    false    209            3           2606    7833942    Alumnos Alumnos_email_key569 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key569" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key569";
       public            postgres    false    209            5           2606    7833902    Alumnos Alumnos_email_key57 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key57" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key57";
       public            postgres    false    209            7           2606    7832688    Alumnos Alumnos_email_key570 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key570" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key570";
       public            postgres    false    209            9           2606    7832690    Alumnos Alumnos_email_key571 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key571" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key571";
       public            postgres    false    209            ;           2606    7832692    Alumnos Alumnos_email_key572 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key572" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key572";
       public            postgres    false    209            =           2606    7832694    Alumnos Alumnos_email_key573 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key573" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key573";
       public            postgres    false    209            ?           2606    7834292    Alumnos Alumnos_email_key574 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key574" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key574";
       public            postgres    false    209            A           2606    7832916    Alumnos Alumnos_email_key575 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key575" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key575";
       public            postgres    false    209            C           2606    7834294    Alumnos Alumnos_email_key576 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key576" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key576";
       public            postgres    false    209            E           2606    7832914    Alumnos Alumnos_email_key577 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key577" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key577";
       public            postgres    false    209            G           2606    7834296    Alumnos Alumnos_email_key578 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key578" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key578";
       public            postgres    false    209            I           2606    7834298    Alumnos Alumnos_email_key579 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key579" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key579";
       public            postgres    false    209            K           2606    7833906    Alumnos Alumnos_email_key58 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key58" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key58";
       public            postgres    false    209            M           2606    7834300    Alumnos Alumnos_email_key580 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key580" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key580";
       public            postgres    false    209            O           2606    7834302    Alumnos Alumnos_email_key581 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key581" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key581";
       public            postgres    false    209            Q           2606    7834304    Alumnos Alumnos_email_key582 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key582" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key582";
       public            postgres    false    209            S           2606    7834306    Alumnos Alumnos_email_key583 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key583" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key583";
       public            postgres    false    209            U           2606    7834308    Alumnos Alumnos_email_key584 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key584" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key584";
       public            postgres    false    209            W           2606    7834310    Alumnos Alumnos_email_key585 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key585" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key585";
       public            postgres    false    209            Y           2606    7834312    Alumnos Alumnos_email_key586 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key586" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key586";
       public            postgres    false    209            [           2606    7834314    Alumnos Alumnos_email_key587 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key587" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key587";
       public            postgres    false    209            ]           2606    7834316    Alumnos Alumnos_email_key588 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key588" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key588";
       public            postgres    false    209            _           2606    7832770    Alumnos Alumnos_email_key589 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key589" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key589";
       public            postgres    false    209            a           2606    7835620    Alumnos Alumnos_email_key59 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key59" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key59";
       public            postgres    false    209            c           2606    7834318    Alumnos Alumnos_email_key590 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key590" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key590";
       public            postgres    false    209            e           2606    7833634    Alumnos Alumnos_email_key591 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key591" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key591";
       public            postgres    false    209            g           2606    7832768    Alumnos Alumnos_email_key592 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key592" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key592";
       public            postgres    false    209            i           2606    7833636    Alumnos Alumnos_email_key593 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key593" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key593";
       public            postgres    false    209            k           2606    7835552    Alumnos Alumnos_email_key594 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key594" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key594";
       public            postgres    false    209            m           2606    7833592    Alumnos Alumnos_email_key595 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key595" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key595";
       public            postgres    false    209            o           2606    7833586    Alumnos Alumnos_email_key596 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key596" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key596";
       public            postgres    false    209            q           2606    7833588    Alumnos Alumnos_email_key597 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key597" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key597";
       public            postgres    false    209            s           2606    7833590    Alumnos Alumnos_email_key598 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key598" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key598";
       public            postgres    false    209            u           2606    7833416    Alumnos Alumnos_email_key599 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key599" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key599";
       public            postgres    false    209            w           2606    7835438    Alumnos Alumnos_email_key6 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key6" UNIQUE (email);
 H   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key6";
       public            postgres    false    209            y           2606    7833908    Alumnos Alumnos_email_key60 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key60" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key60";
       public            postgres    false    209            {           2606    7833418    Alumnos Alumnos_email_key600 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key600" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key600";
       public            postgres    false    209            }           2606    7833342    Alumnos Alumnos_email_key601 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key601" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key601";
       public            postgres    false    209                       2606    7833420    Alumnos Alumnos_email_key602 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key602" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key602";
       public            postgres    false    209            �           2606    7833422    Alumnos Alumnos_email_key603 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key603" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key603";
       public            postgres    false    209            �           2606    7833340    Alumnos Alumnos_email_key604 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key604" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key604";
       public            postgres    false    209            �           2606    7833424    Alumnos Alumnos_email_key605 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key605" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key605";
       public            postgres    false    209            �           2606    7833426    Alumnos Alumnos_email_key606 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key606" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key606";
       public            postgres    false    209            �           2606    7833428    Alumnos Alumnos_email_key607 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key607" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key607";
       public            postgres    false    209            �           2606    7833430    Alumnos Alumnos_email_key608 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key608" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key608";
       public            postgres    false    209            �           2606    7833432    Alumnos Alumnos_email_key609 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key609" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key609";
       public            postgres    false    209            �           2606    7833910    Alumnos Alumnos_email_key61 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key61" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key61";
       public            postgres    false    209            �           2606    7834288    Alumnos Alumnos_email_key610 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key610" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key610";
       public            postgres    false    209            �           2606    7833434    Alumnos Alumnos_email_key611 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key611" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key611";
       public            postgres    false    209            �           2606    7833436    Alumnos Alumnos_email_key612 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key612" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key612";
       public            postgres    false    209            �           2606    7833438    Alumnos Alumnos_email_key613 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key613" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key613";
       public            postgres    false    209            �           2606    7833440    Alumnos Alumnos_email_key614 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key614" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key614";
       public            postgres    false    209            �           2606    7834286    Alumnos Alumnos_email_key615 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key615" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key615";
       public            postgres    false    209            �           2606    7834028    Alumnos Alumnos_email_key616 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key616" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key616";
       public            postgres    false    209            �           2606    7834030    Alumnos Alumnos_email_key617 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key617" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key617";
       public            postgres    false    209            �           2606    7834032    Alumnos Alumnos_email_key618 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key618" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key618";
       public            postgres    false    209            �           2606    7834034    Alumnos Alumnos_email_key619 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key619" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key619";
       public            postgres    false    209            �           2606    7834572    Alumnos Alumnos_email_key62 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key62" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key62";
       public            postgres    false    209            �           2606    7834036    Alumnos Alumnos_email_key620 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key620" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key620";
       public            postgres    false    209            �           2606    7834038    Alumnos Alumnos_email_key621 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key621" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key621";
       public            postgres    false    209            �           2606    7834284    Alumnos Alumnos_email_key622 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key622" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key622";
       public            postgres    false    209            �           2606    7834040    Alumnos Alumnos_email_key623 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key623" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key623";
       public            postgres    false    209            �           2606    7834042    Alumnos Alumnos_email_key624 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key624" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key624";
       public            postgres    false    209            �           2606    7834282    Alumnos Alumnos_email_key625 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key625" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key625";
       public            postgres    false    209            �           2606    7834044    Alumnos Alumnos_email_key626 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key626" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key626";
       public            postgres    false    209            �           2606    7834046    Alumnos Alumnos_email_key627 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key627" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key627";
       public            postgres    false    209            �           2606    7834048    Alumnos Alumnos_email_key628 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key628" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key628";
       public            postgres    false    209            �           2606    7834050    Alumnos Alumnos_email_key629 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key629" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key629";
       public            postgres    false    209            �           2606    7834574    Alumnos Alumnos_email_key63 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key63" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key63";
       public            postgres    false    209            �           2606    7834052    Alumnos Alumnos_email_key630 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key630" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key630";
       public            postgres    false    209            �           2606    7834054    Alumnos Alumnos_email_key631 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key631" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key631";
       public            postgres    false    209            �           2606    7834056    Alumnos Alumnos_email_key632 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key632" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key632";
       public            postgres    false    209            �           2606    7834058    Alumnos Alumnos_email_key633 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key633" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key633";
       public            postgres    false    209            �           2606    7834060    Alumnos Alumnos_email_key634 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key634" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key634";
       public            postgres    false    209            �           2606    7834062    Alumnos Alumnos_email_key635 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key635" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key635";
       public            postgres    false    209            �           2606    7834064    Alumnos Alumnos_email_key636 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key636" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key636";
       public            postgres    false    209            �           2606    7834066    Alumnos Alumnos_email_key637 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key637" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key637";
       public            postgres    false    209            �           2606    7834324    Alumnos Alumnos_email_key638 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key638" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key638";
       public            postgres    false    209            �           2606    7834068    Alumnos Alumnos_email_key639 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key639" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key639";
       public            postgres    false    209            �           2606    7834576    Alumnos Alumnos_email_key64 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key64" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key64";
       public            postgres    false    209            �           2606    7834070    Alumnos Alumnos_email_key640 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key640" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key640";
       public            postgres    false    209            �           2606    7834072    Alumnos Alumnos_email_key641 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key641" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key641";
       public            postgres    false    209            �           2606    7834074    Alumnos Alumnos_email_key642 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key642" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key642";
       public            postgres    false    209            �           2606    7834322    Alumnos Alumnos_email_key643 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key643" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key643";
       public            postgres    false    209            �           2606    7834076    Alumnos Alumnos_email_key644 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key644" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key644";
       public            postgres    false    209            �           2606    7834320    Alumnos Alumnos_email_key645 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key645" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key645";
       public            postgres    false    209            �           2606    7834078    Alumnos Alumnos_email_key646 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key646" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key646";
       public            postgres    false    209            �           2606    7834080    Alumnos Alumnos_email_key647 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key647" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key647";
       public            postgres    false    209            �           2606    7834082    Alumnos Alumnos_email_key648 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key648" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key648";
       public            postgres    false    209            �           2606    7834586    Alumnos Alumnos_email_key649 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key649" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key649";
       public            postgres    false    209            �           2606    7834578    Alumnos Alumnos_email_key65 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key65" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key65";
       public            postgres    false    209            �           2606    7834588    Alumnos Alumnos_email_key650 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key650" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key650";
       public            postgres    false    209            �           2606    7834590    Alumnos Alumnos_email_key651 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key651" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key651";
       public            postgres    false    209            �           2606    7834332    Alumnos Alumnos_email_key652 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key652" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key652";
       public            postgres    false    209            �           2606    7834334    Alumnos Alumnos_email_key653 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key653" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key653";
       public            postgres    false    209            �           2606    7834336    Alumnos Alumnos_email_key654 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key654" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key654";
       public            postgres    false    209            �           2606    7834338    Alumnos Alumnos_email_key655 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key655" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key655";
       public            postgres    false    209            �           2606    7834340    Alumnos Alumnos_email_key656 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key656" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key656";
       public            postgres    false    209            �           2606    7834342    Alumnos Alumnos_email_key657 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key657" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key657";
       public            postgres    false    209            �           2606    7834344    Alumnos Alumnos_email_key658 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key658" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key658";
       public            postgres    false    209            �           2606    7834346    Alumnos Alumnos_email_key659 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key659" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key659";
       public            postgres    false    209            �           2606    7834580    Alumnos Alumnos_email_key66 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key66" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key66";
       public            postgres    false    209            �           2606    7833516    Alumnos Alumnos_email_key660 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key660" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key660";
       public            postgres    false    209                       2606    7834348    Alumnos Alumnos_email_key661 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key661" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key661";
       public            postgres    false    209                       2606    7834350    Alumnos Alumnos_email_key662 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key662" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key662";
       public            postgres    false    209                       2606    7834596    Alumnos Alumnos_email_key663 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key663" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key663";
       public            postgres    false    209                       2606    7833514    Alumnos Alumnos_email_key664 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key664" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key664";
       public            postgres    false    209            	           2606    7836058    Alumnos Alumnos_email_key665 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key665" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key665";
       public            postgres    false    209                       2606    7836060    Alumnos Alumnos_email_key666 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key666" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key666";
       public            postgres    false    209                       2606    7836062    Alumnos Alumnos_email_key667 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key667" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key667";
       public            postgres    false    209                       2606    7836064    Alumnos Alumnos_email_key668 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key668" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key668";
       public            postgres    false    209                       2606    7835282    Alumnos Alumnos_email_key669 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key669" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key669";
       public            postgres    false    209                       2606    7833464    Alumnos Alumnos_email_key67 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key67" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key67";
       public            postgres    false    209                       2606    7836066    Alumnos Alumnos_email_key670 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key670" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key670";
       public            postgres    false    209                       2606    7835280    Alumnos Alumnos_email_key671 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key671" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key671";
       public            postgres    false    209                       2606    7833066    Alumnos Alumnos_email_key672 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key672" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key672";
       public            postgres    false    209                       2606    7833068    Alumnos Alumnos_email_key673 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key673" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key673";
       public            postgres    false    209                       2606    7833070    Alumnos Alumnos_email_key674 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key674" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key674";
       public            postgres    false    209                       2606    7833072    Alumnos Alumnos_email_key675 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key675" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key675";
       public            postgres    false    209            !           2606    7833074    Alumnos Alumnos_email_key676 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key676" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key676";
       public            postgres    false    209            #           2606    7833076    Alumnos Alumnos_email_key677 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key677" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key677";
       public            postgres    false    209            %           2606    7833088    Alumnos Alumnos_email_key678 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key678" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key678";
       public            postgres    false    209            '           2606    7833078    Alumnos Alumnos_email_key679 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key679" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key679";
       public            postgres    false    209            )           2606    7833466    Alumnos Alumnos_email_key68 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key68" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key68";
       public            postgres    false    209            +           2606    7833080    Alumnos Alumnos_email_key680 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key680" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key680";
       public            postgres    false    209            -           2606    7833082    Alumnos Alumnos_email_key681 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key681" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key681";
       public            postgres    false    209            /           2606    7833084    Alumnos Alumnos_email_key682 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key682" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key682";
       public            postgres    false    209            1           2606    7833086    Alumnos Alumnos_email_key683 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key683" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key683";
       public            postgres    false    209            3           2606    7833834    Alumnos Alumnos_email_key684 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key684" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key684";
       public            postgres    false    209            5           2606    7833376    Alumnos Alumnos_email_key685 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key685" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key685";
       public            postgres    false    209            7           2606    7833378    Alumnos Alumnos_email_key686 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key686" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key686";
       public            postgres    false    209            9           2606    7833832    Alumnos Alumnos_email_key687 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key687" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key687";
       public            postgres    false    209            ;           2606    7833380    Alumnos Alumnos_email_key688 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key688" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key688";
       public            postgres    false    209            =           2606    7833830    Alumnos Alumnos_email_key689 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key689" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key689";
       public            postgres    false    209            ?           2606    7833468    Alumnos Alumnos_email_key69 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key69" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key69";
       public            postgres    false    209            A           2606    7833382    Alumnos Alumnos_email_key690 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key690" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key690";
       public            postgres    false    209            C           2606    7833384    Alumnos Alumnos_email_key691 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key691" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key691";
       public            postgres    false    209            E           2606    7833386    Alumnos Alumnos_email_key692 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key692" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key692";
       public            postgres    false    209            G           2606    7833388    Alumnos Alumnos_email_key693 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key693" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key693";
       public            postgres    false    209            I           2606    7833390    Alumnos Alumnos_email_key694 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key694" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key694";
       public            postgres    false    209            K           2606    7833392    Alumnos Alumnos_email_key695 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key695" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key695";
       public            postgres    false    209            M           2606    7833394    Alumnos Alumnos_email_key696 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key696" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key696";
       public            postgres    false    209            O           2606    7833396    Alumnos Alumnos_email_key697 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key697" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key697";
       public            postgres    false    209            Q           2606    7833398    Alumnos Alumnos_email_key698 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key698" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key698";
       public            postgres    false    209            S           2606    7833400    Alumnos Alumnos_email_key699 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key699" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key699";
       public            postgres    false    209            U           2606    7835440    Alumnos Alumnos_email_key7 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key7" UNIQUE (email);
 H   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key7";
       public            postgres    false    209            W           2606    7832970    Alumnos Alumnos_email_key70 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key70" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key70";
       public            postgres    false    209            Y           2606    7833402    Alumnos Alumnos_email_key700 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key700" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key700";
       public            postgres    false    209            [           2606    7834826    Alumnos Alumnos_email_key701 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key701" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key701";
       public            postgres    false    209            ]           2606    7836068    Alumnos Alumnos_email_key702 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key702" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key702";
       public            postgres    false    209            _           2606    7836070    Alumnos Alumnos_email_key703 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key703" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key703";
       public            postgres    false    209            a           2606    7835134    Alumnos Alumnos_email_key704 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key704" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key704";
       public            postgres    false    209            c           2606    7833526    Alumnos Alumnos_email_key705 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key705" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key705";
       public            postgres    false    209            e           2606    7833528    Alumnos Alumnos_email_key706 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key706" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key706";
       public            postgres    false    209            g           2606    7833530    Alumnos Alumnos_email_key707 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key707" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key707";
       public            postgres    false    209            i           2606    7833532    Alumnos Alumnos_email_key708 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key708" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key708";
       public            postgres    false    209            k           2606    7833534    Alumnos Alumnos_email_key709 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key709" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key709";
       public            postgres    false    209            m           2606    7832972    Alumnos Alumnos_email_key71 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key71" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key71";
       public            postgres    false    209            o           2606    7833536    Alumnos Alumnos_email_key710 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key710" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key710";
       public            postgres    false    209            q           2606    7833538    Alumnos Alumnos_email_key711 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key711" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key711";
       public            postgres    false    209            s           2606    7835132    Alumnos Alumnos_email_key712 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key712" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key712";
       public            postgres    false    209            u           2606    7833540    Alumnos Alumnos_email_key713 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key713" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key713";
       public            postgres    false    209            w           2606    7833542    Alumnos Alumnos_email_key714 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key714" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key714";
       public            postgres    false    209            y           2606    7833544    Alumnos Alumnos_email_key715 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key715" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key715";
       public            postgres    false    209            {           2606    7833546    Alumnos Alumnos_email_key716 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key716" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key716";
       public            postgres    false    209            }           2606    7833548    Alumnos Alumnos_email_key717 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key717" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key717";
       public            postgres    false    209                       2606    7833550    Alumnos Alumnos_email_key718 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key718" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key718";
       public            postgres    false    209            �           2606    7835128    Alumnos Alumnos_email_key719 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key719" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key719";
       public            postgres    false    209            �           2606    7835618    Alumnos Alumnos_email_key72 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key72" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key72";
       public            postgres    false    209            �           2606    7835130    Alumnos Alumnos_email_key720 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key720" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key720";
       public            postgres    false    209            �           2606    7834930    Alumnos Alumnos_email_key721 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key721" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key721";
       public            postgres    false    209            �           2606    7834932    Alumnos Alumnos_email_key722 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key722" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key722";
       public            postgres    false    209            �           2606    7834934    Alumnos Alumnos_email_key723 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key723" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key723";
       public            postgres    false    209            �           2606    7834936    Alumnos Alumnos_email_key724 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key724" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key724";
       public            postgres    false    209            �           2606    7834938    Alumnos Alumnos_email_key725 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key725" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key725";
       public            postgres    false    209            �           2606    7835922    Alumnos Alumnos_email_key726 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key726" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key726";
       public            postgres    false    209            �           2606    7833208    Alumnos Alumnos_email_key727 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key727" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key727";
       public            postgres    false    209            �           2606    7835924    Alumnos Alumnos_email_key728 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key728" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key728";
       public            postgres    false    209            �           2606    7835926    Alumnos Alumnos_email_key729 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key729" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key729";
       public            postgres    false    209            �           2606    7832988    Alumnos Alumnos_email_key73 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key73" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key73";
       public            postgres    false    209            �           2606    7835928    Alumnos Alumnos_email_key730 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key730" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key730";
       public            postgres    false    209            �           2606    7835930    Alumnos Alumnos_email_key731 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key731" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key731";
       public            postgres    false    209            �           2606    7833206    Alumnos Alumnos_email_key732 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key732" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key732";
       public            postgres    false    209            �           2606    7835932    Alumnos Alumnos_email_key733 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key733" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key733";
       public            postgres    false    209            �           2606    7833920    Alumnos Alumnos_email_key734 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key734" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key734";
       public            postgres    false    209            �           2606    7835934    Alumnos Alumnos_email_key735 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key735" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key735";
       public            postgres    false    209            �           2606    7835936    Alumnos Alumnos_email_key736 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key736" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key736";
       public            postgres    false    209            �           2606    7835938    Alumnos Alumnos_email_key737 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key737" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key737";
       public            postgres    false    209            �           2606    7835168    Alumnos Alumnos_email_key738 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key738" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key738";
       public            postgres    false    209            �           2606    7834706    Alumnos Alumnos_email_key739 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key739" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key739";
       public            postgres    false    209            �           2606    7832990    Alumnos Alumnos_email_key74 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key74" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key74";
       public            postgres    false    209            �           2606    7834708    Alumnos Alumnos_email_key740 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key740" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key740";
       public            postgres    false    209            �           2606    7834710    Alumnos Alumnos_email_key741 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key741" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key741";
       public            postgres    false    209            �           2606    7834924    Alumnos Alumnos_email_key742 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key742" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key742";
       public            postgres    false    209            �           2606    7834926    Alumnos Alumnos_email_key743 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key743" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key743";
       public            postgres    false    209            �           2606    7834928    Alumnos Alumnos_email_key744 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key744" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key744";
       public            postgres    false    209            �           2606    7835980    Alumnos Alumnos_email_key745 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key745" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key745";
       public            postgres    false    209            �           2606    7835982    Alumnos Alumnos_email_key746 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key746" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key746";
       public            postgres    false    209            �           2606    7836000    Alumnos Alumnos_email_key747 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key747" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key747";
       public            postgres    false    209            �           2606    7835984    Alumnos Alumnos_email_key748 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key748" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key748";
       public            postgres    false    209            �           2606    7835986    Alumnos Alumnos_email_key749 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key749" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key749";
       public            postgres    false    209            �           2606    7834862    Alumnos Alumnos_email_key75 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key75" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key75";
       public            postgres    false    209            �           2606    7835988    Alumnos Alumnos_email_key750 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key750" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key750";
       public            postgres    false    209            �           2606    7835990    Alumnos Alumnos_email_key751 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key751" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key751";
       public            postgres    false    209            �           2606    7835992    Alumnos Alumnos_email_key752 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key752" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key752";
       public            postgres    false    209            �           2606    7835994    Alumnos Alumnos_email_key753 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key753" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key753";
       public            postgres    false    209            �           2606    7835996    Alumnos Alumnos_email_key754 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key754" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key754";
       public            postgres    false    209            �           2606    7835998    Alumnos Alumnos_email_key755 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key755" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key755";
       public            postgres    false    209            �           2606    7834962    Alumnos Alumnos_email_key756 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key756" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key756";
       public            postgres    false    209            �           2606    7834088    Alumnos Alumnos_email_key757 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key757" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key757";
       public            postgres    false    209            �           2606    7834964    Alumnos Alumnos_email_key758 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key758" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key758";
       public            postgres    false    209            �           2606    7834086    Alumnos Alumnos_email_key759 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key759" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key759";
       public            postgres    false    209            �           2606    7834864    Alumnos Alumnos_email_key76 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key76" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key76";
       public            postgres    false    209            �           2606    7834966    Alumnos Alumnos_email_key760 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key760" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key760";
       public            postgres    false    209            �           2606    7834968    Alumnos Alumnos_email_key761 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key761" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key761";
       public            postgres    false    209            �           2606    7834970    Alumnos Alumnos_email_key762 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key762" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key762";
       public            postgres    false    209            �           2606    7834972    Alumnos Alumnos_email_key763 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key763" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key763";
       public            postgres    false    209            �           2606    7834974    Alumnos Alumnos_email_key764 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key764" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key764";
       public            postgres    false    209            �           2606    7834976    Alumnos Alumnos_email_key765 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key765" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key765";
       public            postgres    false    209            �           2606    7834978    Alumnos Alumnos_email_key766 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key766" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key766";
       public            postgres    false    209            �           2606    7834980    Alumnos Alumnos_email_key767 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key767" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key767";
       public            postgres    false    209            �           2606    7834982    Alumnos Alumnos_email_key768 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key768" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key768";
       public            postgres    false    209            �           2606    7833140    Alumnos Alumnos_email_key769 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key769" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key769";
       public            postgres    false    209            �           2606    7833888    Alumnos Alumnos_email_key77 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key77" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key77";
       public            postgres    false    209            �           2606    7834984    Alumnos Alumnos_email_key770 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key770" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key770";
       public            postgres    false    209            �           2606    7834986    Alumnos Alumnos_email_key771 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key771" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key771";
       public            postgres    false    209            �           2606    7834988    Alumnos Alumnos_email_key772 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key772" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key772";
       public            postgres    false    209            �           2606    7834990    Alumnos Alumnos_email_key773 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key773" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key773";
       public            postgres    false    209            �           2606    7834992    Alumnos Alumnos_email_key774 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key774" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key774";
       public            postgres    false    209            �           2606    7834994    Alumnos Alumnos_email_key775 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key775" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key775";
       public            postgres    false    209            �           2606    7834996    Alumnos Alumnos_email_key776 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key776" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key776";
       public            postgres    false    209                       2606    7833138    Alumnos Alumnos_email_key777 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key777" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key777";
       public            postgres    false    209                       2606    7834998    Alumnos Alumnos_email_key778 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key778" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key778";
       public            postgres    false    209                       2606    7835000    Alumnos Alumnos_email_key779 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key779" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key779";
       public            postgres    false    209                       2606    7835616    Alumnos Alumnos_email_key78 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key78" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key78";
       public            postgres    false    209            	           2606    7835002    Alumnos Alumnos_email_key780 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key780" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key780";
       public            postgres    false    209                       2606    7835004    Alumnos Alumnos_email_key781 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key781" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key781";
       public            postgres    false    209                       2606    7834832    Alumnos Alumnos_email_key782 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key782" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key782";
       public            postgres    false    209                       2606    7835066    Alumnos Alumnos_email_key783 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key783" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key783";
       public            postgres    false    209                       2606    7835068    Alumnos Alumnos_email_key784 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key784" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key784";
       public            postgres    false    209                       2606    7835070    Alumnos Alumnos_email_key785 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key785" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key785";
       public            postgres    false    209                       2606    7834594    Alumnos Alumnos_email_key786 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key786" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key786";
       public            postgres    false    209                       2606    7834352    Alumnos Alumnos_email_key787 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key787" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key787";
       public            postgres    false    209                       2606    7834354    Alumnos Alumnos_email_key788 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key788" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key788";
       public            postgres    false    209                       2606    7834356    Alumnos Alumnos_email_key789 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key789" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key789";
       public            postgres    false    209                       2606    7835614    Alumnos Alumnos_email_key79 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key79" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key79";
       public            postgres    false    209                       2606    7834358    Alumnos Alumnos_email_key790 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key790" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key790";
       public            postgres    false    209            !           2606    7834360    Alumnos Alumnos_email_key791 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key791" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key791";
       public            postgres    false    209            #           2606    7834362    Alumnos Alumnos_email_key792 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key792" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key792";
       public            postgres    false    209            %           2606    7834364    Alumnos Alumnos_email_key793 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key793" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key793";
       public            postgres    false    209            '           2606    7834592    Alumnos Alumnos_email_key794 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key794" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key794";
       public            postgres    false    209            )           2606    7834366    Alumnos Alumnos_email_key795 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key795" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key795";
       public            postgres    false    209            +           2606    7834368    Alumnos Alumnos_email_key796 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key796" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key796";
       public            postgres    false    209            -           2606    7834370    Alumnos Alumnos_email_key797 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key797" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key797";
       public            postgres    false    209            /           2606    7834372    Alumnos Alumnos_email_key798 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key798" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key798";
       public            postgres    false    209            1           2606    7834374    Alumnos Alumnos_email_key799 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key799" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key799";
       public            postgres    false    209            3           2606    7834958    Alumnos Alumnos_email_key8 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key8" UNIQUE (email);
 H   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key8";
       public            postgres    false    209            5           2606    7835604    Alumnos Alumnos_email_key80 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key80" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key80";
       public            postgres    false    209            7           2606    7834376    Alumnos Alumnos_email_key800 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key800" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key800";
       public            postgres    false    209            9           2606    7834378    Alumnos Alumnos_email_key801 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key801" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key801";
       public            postgres    false    209            ;           2606    7835978    Alumnos Alumnos_email_key802 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key802" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key802";
       public            postgres    false    209            =           2606    7834380    Alumnos Alumnos_email_key803 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key803" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key803";
       public            postgres    false    209            ?           2606    7832676    Alumnos Alumnos_email_key804 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key804" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key804";
       public            postgres    false    209            A           2606    7832678    Alumnos Alumnos_email_key805 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key805" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key805";
       public            postgres    false    209            C           2606    7835976    Alumnos Alumnos_email_key806 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key806" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key806";
       public            postgres    false    209            E           2606    7832680    Alumnos Alumnos_email_key807 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key807" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key807";
       public            postgres    false    209            G           2606    7832682    Alumnos Alumnos_email_key808 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key808" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key808";
       public            postgres    false    209            I           2606    7832684    Alumnos Alumnos_email_key809 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key809" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key809";
       public            postgres    false    209            K           2606    7835606    Alumnos Alumnos_email_key81 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key81" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key81";
       public            postgres    false    209            M           2606    7835046    Alumnos Alumnos_email_key810 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key810" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key810";
       public            postgres    false    209            O           2606    7834108    Alumnos Alumnos_email_key811 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key811" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key811";
       public            postgres    false    209            Q           2606    7835010    Alumnos Alumnos_email_key812 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key812" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key812";
       public            postgres    false    209            S           2606    7834110    Alumnos Alumnos_email_key813 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key813" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key813";
       public            postgres    false    209            U           2606    7834206    Alumnos Alumnos_email_key814 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key814" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key814";
       public            postgres    false    209            W           2606    7834208    Alumnos Alumnos_email_key815 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key815" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key815";
       public            postgres    false    209            Y           2606    7834210    Alumnos Alumnos_email_key816 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key816" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key816";
       public            postgres    false    209            [           2606    7834212    Alumnos Alumnos_email_key817 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key817" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key817";
       public            postgres    false    209            ]           2606    7834214    Alumnos Alumnos_email_key818 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key818" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key818";
       public            postgres    false    209            _           2606    7833662    Alumnos Alumnos_email_key819 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key819" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key819";
       public            postgres    false    209            a           2606    7835608    Alumnos Alumnos_email_key82 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key82" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key82";
       public            postgres    false    209            c           2606    7833660    Alumnos Alumnos_email_key820 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key820" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key820";
       public            postgres    false    209            e           2606    7833524    Alumnos Alumnos_email_key821 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key821" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key821";
       public            postgres    false    209            g           2606    7833194    Alumnos Alumnos_email_key822 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key822" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key822";
       public            postgres    false    209            i           2606    7833190    Alumnos Alumnos_email_key823 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key823" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key823";
       public            postgres    false    209            k           2606    7833192    Alumnos Alumnos_email_key824 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key824" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key824";
       public            postgres    false    209            m           2606    7833598    Alumnos Alumnos_email_key825 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key825" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key825";
       public            postgres    false    209            o           2606    7833594    Alumnos Alumnos_email_key826 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key826" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key826";
       public            postgres    false    209            q           2606    7833596    Alumnos Alumnos_email_key827 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key827" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key827";
       public            postgres    false    209            s           2606    7834276    Alumnos Alumnos_email_key828 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key828" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key828";
       public            postgres    false    209            u           2606    7834272    Alumnos Alumnos_email_key829 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key829" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key829";
       public            postgres    false    209            w           2606    7835610    Alumnos Alumnos_email_key83 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key83" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key83";
       public            postgres    false    209            y           2606    7834274    Alumnos Alumnos_email_key830 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key830" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key830";
       public            postgres    false    209            {           2606    7833204    Alumnos Alumnos_email_key831 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key831" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key831";
       public            postgres    false    209            }           2606    7833922    Alumnos Alumnos_email_key832 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key832" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key832";
       public            postgres    false    209                       2606    7833924    Alumnos Alumnos_email_key833 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key833" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key833";
       public            postgres    false    209            �           2606    7833202    Alumnos Alumnos_email_key834 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key834" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key834";
       public            postgres    false    209            �           2606    7835152    Alumnos Alumnos_email_key835 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key835" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key835";
       public            postgres    false    209            �           2606    7833856    Alumnos Alumnos_email_key836 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key836" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key836";
       public            postgres    false    209            �           2606    7835150    Alumnos Alumnos_email_key837 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key837" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key837";
       public            postgres    false    209            �           2606    7833858    Alumnos Alumnos_email_key838 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key838" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key838";
       public            postgres    false    209            �           2606    7833860    Alumnos Alumnos_email_key839 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key839" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key839";
       public            postgres    false    209            �           2606    7835612    Alumnos Alumnos_email_key84 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key84" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key84";
       public            postgres    false    209            �           2606    7834084    Alumnos Alumnos_email_key840 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key840" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key840";
       public            postgres    false    209            �           2606    7833862    Alumnos Alumnos_email_key841 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key841" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key841";
       public            postgres    false    209            �           2606    7833864    Alumnos Alumnos_email_key842 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key842" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key842";
       public            postgres    false    209            �           2606    7833866    Alumnos Alumnos_email_key843 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key843" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key843";
       public            postgres    false    209            �           2606    7833868    Alumnos Alumnos_email_key844 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key844" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key844";
       public            postgres    false    209            �           2606    7833870    Alumnos Alumnos_email_key845 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key845" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key845";
       public            postgres    false    209            �           2606    7833872    Alumnos Alumnos_email_key846 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key846" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key846";
       public            postgres    false    209            �           2606    7833874    Alumnos Alumnos_email_key847 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key847" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key847";
       public            postgres    false    209            �           2606    7836050    Alumnos Alumnos_email_key848 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key848" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key848";
       public            postgres    false    209            �           2606    7833876    Alumnos Alumnos_email_key849 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key849" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key849";
       public            postgres    false    209            �           2606    7834154    Alumnos Alumnos_email_key85 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key85" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key85";
       public            postgres    false    209            �           2606    7833878    Alumnos Alumnos_email_key850 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key850" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key850";
       public            postgres    false    209            �           2606    7833880    Alumnos Alumnos_email_key851 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key851" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key851";
       public            postgres    false    209            �           2606    7834718    Alumnos Alumnos_email_key852 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key852" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key852";
       public            postgres    false    209            �           2606    7833882    Alumnos Alumnos_email_key853 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key853" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key853";
       public            postgres    false    209            �           2606    7833884    Alumnos Alumnos_email_key854 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key854" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key854";
       public            postgres    false    209            �           2606    7834716    Alumnos Alumnos_email_key855 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key855" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key855";
       public            postgres    false    209            �           2606    7832704    Alumnos Alumnos_email_key856 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key856" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key856";
       public            postgres    false    209            �           2606    7832746    Alumnos Alumnos_email_key857 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key857" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key857";
       public            postgres    false    209            �           2606    7832748    Alumnos Alumnos_email_key858 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key858" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key858";
       public            postgres    false    209            �           2606    7833062    Alumnos Alumnos_email_key859 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key859" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key859";
       public            postgres    false    209            �           2606    7836080    Alumnos Alumnos_email_key86 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key86" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key86";
       public            postgres    false    209            �           2606    7834944    Alumnos Alumnos_email_key860 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key860" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key860";
       public            postgres    false    209            �           2606    7834946    Alumnos Alumnos_email_key861 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key861" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key861";
       public            postgres    false    209            �           2606    7834948    Alumnos Alumnos_email_key862 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key862" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key862";
       public            postgres    false    209            �           2606    7835272    Alumnos Alumnos_email_key863 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key863" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key863";
       public            postgres    false    209            �           2606    7835274    Alumnos Alumnos_email_key864 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key864" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key864";
       public            postgres    false    209            �           2606    7834840    Alumnos Alumnos_email_key865 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key865" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key865";
       public            postgres    false    209            �           2606    7833712    Alumnos Alumnos_email_key866 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key866" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key866";
       public            postgres    false    209            �           2606    7833794    Alumnos Alumnos_email_key867 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key867" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key867";
       public            postgres    false    209            �           2606    7833298    Alumnos Alumnos_email_key868 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key868" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key868";
       public            postgres    false    209            �           2606    7833300    Alumnos Alumnos_email_key869 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key869" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key869";
       public            postgres    false    209            �           2606    7836082    Alumnos Alumnos_email_key87 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key87" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key87";
       public            postgres    false    209            �           2606    7834838    Alumnos Alumnos_email_key870 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key870" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key870";
       public            postgres    false    209            �           2606    7833310    Alumnos Alumnos_email_key871 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key871" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key871";
       public            postgres    false    209            �           2606    7833302    Alumnos Alumnos_email_key872 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key872" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key872";
       public            postgres    false    209            �           2606    7833308    Alumnos Alumnos_email_key873 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key873" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key873";
       public            postgres    false    209            �           2606    7833304    Alumnos Alumnos_email_key874 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key874" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key874";
       public            postgres    false    209            �           2606    7833306    Alumnos Alumnos_email_key875 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key875" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key875";
       public            postgres    false    209            �           2606    7835464    Alumnos Alumnos_email_key876 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key876" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key876";
       public            postgres    false    209            �           2606    7835466    Alumnos Alumnos_email_key877 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key877" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key877";
       public            postgres    false    209            �           2606    7835468    Alumnos Alumnos_email_key878 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key878" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key878";
       public            postgres    false    209            �           2606    7835470    Alumnos Alumnos_email_key879 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key879" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key879";
       public            postgres    false    209            �           2606    7833506    Alumnos Alumnos_email_key88 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key88" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key88";
       public            postgres    false    209            �           2606    7833816    Alumnos Alumnos_email_key880 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key880" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key880";
       public            postgres    false    209            �           2606    7835472    Alumnos Alumnos_email_key881 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key881" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key881";
       public            postgres    false    209            �           2606    7835474    Alumnos Alumnos_email_key882 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key882" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key882";
       public            postgres    false    209            �           2606    7835476    Alumnos Alumnos_email_key883 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key883" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key883";
       public            postgres    false    209            �           2606    7833814    Alumnos Alumnos_email_key884 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key884" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key884";
       public            postgres    false    209            �           2606    7835478    Alumnos Alumnos_email_key885 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key885" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key885";
       public            postgres    false    209            �           2606    7835480    Alumnos Alumnos_email_key886 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key886" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key886";
       public            postgres    false    209            �           2606    7833812    Alumnos Alumnos_email_key887 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key887" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key887";
       public            postgres    false    209            �           2606    7835482    Alumnos Alumnos_email_key888 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key888" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key888";
       public            postgres    false    209            �           2606    7835484    Alumnos Alumnos_email_key889 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key889" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key889";
       public            postgres    false    209            �           2606    7833508    Alumnos Alumnos_email_key89 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key89" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key89";
       public            postgres    false    209            �           2606    7835486    Alumnos Alumnos_email_key890 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key890" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key890";
       public            postgres    false    209            �           2606    7835488    Alumnos Alumnos_email_key891 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key891" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key891";
       public            postgres    false    209                       2606    7835490    Alumnos Alumnos_email_key892 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key892" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key892";
       public            postgres    false    209                       2606    7835492    Alumnos Alumnos_email_key893 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key893" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key893";
       public            postgres    false    209                       2606    7835494    Alumnos Alumnos_email_key894 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key894" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key894";
       public            postgres    false    209                       2606    7835496    Alumnos Alumnos_email_key895 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key895" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key895";
       public            postgres    false    209            	           2606    7835498    Alumnos Alumnos_email_key896 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key896" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key896";
       public            postgres    false    209                       2606    7835500    Alumnos Alumnos_email_key897 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key897" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key897";
       public            postgres    false    209                       2606    7835502    Alumnos Alumnos_email_key898 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key898" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key898";
       public            postgres    false    209                       2606    7835504    Alumnos Alumnos_email_key899 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key899" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key899";
       public            postgres    false    209                       2606    7832808    Alumnos Alumnos_email_key9 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key9" UNIQUE (email);
 H   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key9";
       public            postgres    false    209                       2606    7834152    Alumnos Alumnos_email_key90 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key90" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key90";
       public            postgres    false    209                       2606    7833410    Alumnos Alumnos_email_key900 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key900" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key900";
       public            postgres    false    209                       2606    7833408    Alumnos Alumnos_email_key901 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key901" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key901";
       public            postgres    false    209                       2606    7835506    Alumnos Alumnos_email_key902 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key902" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key902";
       public            postgres    false    209                       2606    7835508    Alumnos Alumnos_email_key903 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key903" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key903";
       public            postgres    false    209                       2606    7833406    Alumnos Alumnos_email_key904 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key904" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key904";
       public            postgres    false    209                       2606    7835510    Alumnos Alumnos_email_key905 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key905" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key905";
       public            postgres    false    209            !           2606    7833404    Alumnos Alumnos_email_key906 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key906" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key906";
       public            postgres    false    209            #           2606    7835512    Alumnos Alumnos_email_key907 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key907" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key907";
       public            postgres    false    209            %           2606    7835534    Alumnos Alumnos_email_key908 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key908" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key908";
       public            postgres    false    209            '           2606    7836048    Alumnos Alumnos_email_key909 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key909" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key909";
       public            postgres    false    209            )           2606    7832830    Alumnos Alumnos_email_key91 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key91" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key91";
       public            postgres    false    209            +           2606    7835536    Alumnos Alumnos_email_key910 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key910" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key910";
       public            postgres    false    209            -           2606    7835538    Alumnos Alumnos_email_key911 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key911" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key911";
       public            postgres    false    209            /           2606    7835540    Alumnos Alumnos_email_key912 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key912" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key912";
       public            postgres    false    209            1           2606    7835550    Alumnos Alumnos_email_key913 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key913" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key913";
       public            postgres    false    209            3           2606    7835542    Alumnos Alumnos_email_key914 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key914" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key914";
       public            postgres    false    209            5           2606    7835544    Alumnos Alumnos_email_key915 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key915" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key915";
       public            postgres    false    209            7           2606    7835546    Alumnos Alumnos_email_key916 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key916" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key916";
       public            postgres    false    209            9           2606    7835548    Alumnos Alumnos_email_key917 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key917" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key917";
       public            postgres    false    209            ;           2606    7834866    Alumnos Alumnos_email_key918 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key918" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key918";
       public            postgres    false    209            =           2606    7834868    Alumnos Alumnos_email_key919 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key919" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key919";
       public            postgres    false    209            ?           2606    7832832    Alumnos Alumnos_email_key92 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key92" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key92";
       public            postgres    false    209            A           2606    7834870    Alumnos Alumnos_email_key920 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key920" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key920";
       public            postgres    false    209            C           2606    7834872    Alumnos Alumnos_email_key921 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key921" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key921";
       public            postgres    false    209            E           2606    7834874    Alumnos Alumnos_email_key922 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key922" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key922";
       public            postgres    false    209            G           2606    7833886    Alumnos Alumnos_email_key923 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key923" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key923";
       public            postgres    false    209            I           2606    7834876    Alumnos Alumnos_email_key924 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key924" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key924";
       public            postgres    false    209            K           2606    7835192    Alumnos Alumnos_email_key925 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key925" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key925";
       public            postgres    false    209            M           2606    7835194    Alumnos Alumnos_email_key926 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key926" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key926";
       public            postgres    false    209            O           2606    7835196    Alumnos Alumnos_email_key927 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key927" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key927";
       public            postgres    false    209            Q           2606    7835198    Alumnos Alumnos_email_key928 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key928" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key928";
       public            postgres    false    209            S           2606    7835200    Alumnos Alumnos_email_key929 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key929" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key929";
       public            postgres    false    209            U           2606    7836004    Alumnos Alumnos_email_key93 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key93" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key93";
       public            postgres    false    209            W           2606    7835202    Alumnos Alumnos_email_key930 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key930" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key930";
       public            postgres    false    209            Y           2606    7835204    Alumnos Alumnos_email_key931 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key931" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key931";
       public            postgres    false    209            [           2606    7835206    Alumnos Alumnos_email_key932 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key932" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key932";
       public            postgres    false    209            ]           2606    7835208    Alumnos Alumnos_email_key933 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key933" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key933";
       public            postgres    false    209            _           2606    7835210    Alumnos Alumnos_email_key934 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key934" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key934";
       public            postgres    false    209            a           2606    7834258    Alumnos Alumnos_email_key935 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key935" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key935";
       public            postgres    false    209            c           2606    7835212    Alumnos Alumnos_email_key936 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key936" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key936";
       public            postgres    false    209            e           2606    7835214    Alumnos Alumnos_email_key937 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key937" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key937";
       public            postgres    false    209            g           2606    7835216    Alumnos Alumnos_email_key938 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key938" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key938";
       public            postgres    false    209            i           2606    7834256    Alumnos Alumnos_email_key939 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key939" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key939";
       public            postgres    false    209            k           2606    7836006    Alumnos Alumnos_email_key94 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key94" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key94";
       public            postgres    false    209            m           2606    7835218    Alumnos Alumnos_email_key940 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key940" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key940";
       public            postgres    false    209            o           2606    7834254    Alumnos Alumnos_email_key941 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key941" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key941";
       public            postgres    false    209            q           2606    7835220    Alumnos Alumnos_email_key942 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key942" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key942";
       public            postgres    false    209            s           2606    7835222    Alumnos Alumnos_email_key943 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key943" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key943";
       public            postgres    false    209            u           2606    7835224    Alumnos Alumnos_email_key944 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key944" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key944";
       public            postgres    false    209            w           2606    7835226    Alumnos Alumnos_email_key945 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key945" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key945";
       public            postgres    false    209            y           2606    7835228    Alumnos Alumnos_email_key946 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key946" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key946";
       public            postgres    false    209            {           2606    7835230    Alumnos Alumnos_email_key947 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key947" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key947";
       public            postgres    false    209            }           2606    7834730    Alumnos Alumnos_email_key948 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key948" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key948";
       public            postgres    false    209                       2606    7834728    Alumnos Alumnos_email_key949 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key949" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key949";
       public            postgres    false    209            �           2606    7836008    Alumnos Alumnos_email_key95 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key95" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key95";
       public            postgres    false    209            �           2606    7835232    Alumnos Alumnos_email_key950 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key950" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key950";
       public            postgres    false    209            �           2606    7834726    Alumnos Alumnos_email_key951 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key951" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key951";
       public            postgres    false    209            �           2606    7835234    Alumnos Alumnos_email_key952 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key952" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key952";
       public            postgres    false    209            �           2606    7834724    Alumnos Alumnos_email_key953 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key953" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key953";
       public            postgres    false    209            �           2606    7833022    Alumnos Alumnos_email_key954 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key954" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key954";
       public            postgres    false    209            �           2606    7833024    Alumnos Alumnos_email_key955 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key955" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key955";
       public            postgres    false    209            �           2606    7833026    Alumnos Alumnos_email_key956 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key956" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key956";
       public            postgres    false    209            �           2606    7833028    Alumnos Alumnos_email_key957 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key957" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key957";
       public            postgres    false    209            �           2606    7833030    Alumnos Alumnos_email_key958 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key958" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key958";
       public            postgres    false    209            �           2606    7833558    Alumnos Alumnos_email_key959 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key959" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key959";
       public            postgres    false    209            �           2606    7833796    Alumnos Alumnos_email_key96 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key96" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key96";
       public            postgres    false    209            �           2606    7833560    Alumnos Alumnos_email_key960 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key960" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key960";
       public            postgres    false    209            �           2606    7833562    Alumnos Alumnos_email_key961 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key961" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key961";
       public            postgres    false    209            �           2606    7833564    Alumnos Alumnos_email_key962 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key962" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key962";
       public            postgres    false    209            �           2606    7833566    Alumnos Alumnos_email_key963 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key963" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key963";
       public            postgres    false    209            �           2606    7833568    Alumnos Alumnos_email_key964 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key964" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key964";
       public            postgres    false    209            �           2606    7833570    Alumnos Alumnos_email_key965 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key965" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key965";
       public            postgres    false    209            �           2606    7833572    Alumnos Alumnos_email_key966 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key966" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key966";
       public            postgres    false    209            �           2606    7833056    Alumnos Alumnos_email_key967 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key967" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key967";
       public            postgres    false    209            �           2606    7833574    Alumnos Alumnos_email_key968 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key968" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key968";
       public            postgres    false    209            �           2606    7833576    Alumnos Alumnos_email_key969 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key969" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key969";
       public            postgres    false    209            �           2606    7833798    Alumnos Alumnos_email_key97 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key97" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key97";
       public            postgres    false    209            �           2606    7834888    Alumnos Alumnos_email_key970 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key970" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key970";
       public            postgres    false    209            �           2606    7834890    Alumnos Alumnos_email_key971 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key971" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key971";
       public            postgres    false    209            �           2606    7834892    Alumnos Alumnos_email_key972 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key972" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key972";
       public            postgres    false    209            �           2606    7834894    Alumnos Alumnos_email_key973 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key973" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key973";
       public            postgres    false    209            �           2606    7833038    Alumnos Alumnos_email_key974 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key974" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key974";
       public            postgres    false    209            �           2606    7833040    Alumnos Alumnos_email_key975 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key975" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key975";
       public            postgres    false    209            �           2606    7833042    Alumnos Alumnos_email_key976 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key976" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key976";
       public            postgres    false    209            �           2606    7833044    Alumnos Alumnos_email_key977 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key977" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key977";
       public            postgres    false    209            �           2606    7833046    Alumnos Alumnos_email_key978 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key978" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key978";
       public            postgres    false    209            �           2606    7833048    Alumnos Alumnos_email_key979 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key979" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key979";
       public            postgres    false    209            �           2606    7833822    Alumnos Alumnos_email_key98 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key98" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key98";
       public            postgres    false    209            �           2606    7833050    Alumnos Alumnos_email_key980 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key980" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key980";
       public            postgres    false    209            �           2606    7833052    Alumnos Alumnos_email_key981 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key981" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key981";
       public            postgres    false    209            �           2606    7833054    Alumnos Alumnos_email_key982 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key982" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key982";
       public            postgres    false    209            �           2606    7835442    Alumnos Alumnos_email_key983 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key983" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key983";
       public            postgres    false    209            �           2606    7835444    Alumnos Alumnos_email_key984 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key984" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key984";
       public            postgres    false    209            �           2606    7835446    Alumnos Alumnos_email_key985 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key985" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key985";
       public            postgres    false    209            �           2606    7833200    Alumnos Alumnos_email_key986 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key986" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key986";
       public            postgres    false    209            �           2606    7835448    Alumnos Alumnos_email_key987 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key987" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key987";
       public            postgres    false    209            �           2606    7835450    Alumnos Alumnos_email_key988 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key988" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key988";
       public            postgres    false    209            �           2606    7835804    Alumnos Alumnos_email_key989 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key989" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key989";
       public            postgres    false    209            �           2606    7833800    Alumnos Alumnos_email_key99 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key99" UNIQUE (email);
 I   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key99";
       public            postgres    false    209            �           2606    7835806    Alumnos Alumnos_email_key990 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key990" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key990";
       public            postgres    false    209            �           2606    7835808    Alumnos Alumnos_email_key991 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key991" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key991";
       public            postgres    false    209            �           2606    7834112    Alumnos Alumnos_email_key992 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key992" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key992";
       public            postgres    false    209            �           2606    7834114    Alumnos Alumnos_email_key993 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key993" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key993";
       public            postgres    false    209            �           2606    7834116    Alumnos Alumnos_email_key994 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key994" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key994";
       public            postgres    false    209            �           2606    7834118    Alumnos Alumnos_email_key995 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key995" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key995";
       public            postgres    false    209            �           2606    7834120    Alumnos Alumnos_email_key996 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key996" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key996";
       public            postgres    false    209            �           2606    7834122    Alumnos Alumnos_email_key997 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key997" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key997";
       public            postgres    false    209            �           2606    7834124    Alumnos Alumnos_email_key998 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key998" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key998";
       public            postgres    false    209            �           2606    7834126    Alumnos Alumnos_email_key999 
   CONSTRAINT     \   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_email_key999" UNIQUE (email);
 J   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_email_key999";
       public            postgres    false    209            �           2606    4820969    Alumnos Alumnos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Alumnos"
    ADD CONSTRAINT "Alumnos_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Alumnos" DROP CONSTRAINT "Alumnos_pkey";
       public            postgres    false    209            �           2606    4820985     CursosAlumnos CursosAlumnos_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public."CursosAlumnos"
    ADD CONSTRAINT "CursosAlumnos_pkey" PRIMARY KEY ("idAlumno", "idCurso");
 N   ALTER TABLE ONLY public."CursosAlumnos" DROP CONSTRAINT "CursosAlumnos_pkey";
       public            postgres    false    212    212            �           2606    4820980    Cursos Cursos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Cursos"
    ADD CONSTRAINT "Cursos_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Cursos" DROP CONSTRAINT "Cursos_pkey";
       public            postgres    false    211            �           2606    4820986 )   CursosAlumnos CursosAlumnos_idAlumno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CursosAlumnos"
    ADD CONSTRAINT "CursosAlumnos_idAlumno_fkey" FOREIGN KEY ("idAlumno") REFERENCES public."Alumnos"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public."CursosAlumnos" DROP CONSTRAINT "CursosAlumnos_idAlumno_fkey";
       public          postgres    false    6639    212    209            �           2606    4820991 (   CursosAlumnos CursosAlumnos_idCurso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CursosAlumnos"
    ADD CONSTRAINT "CursosAlumnos_idCurso_fkey" FOREIGN KEY ("idCurso") REFERENCES public."Cursos"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public."CursosAlumnos" DROP CONSTRAINT "CursosAlumnos_idCurso_fkey";
       public          postgres    false    212    211    6641            �   �   x�E��
�0 ��������N��T$]f���)Ao]��}L,��{��#j:o�Y��ok�MOn�E!4!�����s���zp�X��9ٕ�"��'����uQ��jg���SxDeD!`�(�$fIDůX WB(A���_	��! .      �   �  x��W�n�8>;O��^YԿb`�i��6��h.c���P�JRq���q{�#��v(Ƕ�������r���qN�����qZ+)��r�JI��� ���^~3)0�jn��Z+�x��PD�!��ZI5]��/"y=m�m�Λ�$w3�jZ	��C�T�F��a̴h�!�U�/Ƈ����\�z��N�ۯ����p0��1#ߟ����9b$߶Vi�V�-��/*��kH�����ˣaSO8y4�hH�pe#�4h����كh�މ��3�pH��RLy��cmE)�I�_�%���9��X������D�+3�^�ѱ
��p��0�W@
�CsAf\k���"�8�� '�����2nM*��=#���l��E�J��
�y�1k��؂��yO>n~x��^<8o�*\Lu�@@��w�.?`���#�1��v0�}��+�q����۬f��J����C�ǳ��K��
�\�z3[I��7� ��U�2&��kx����Rn������T=�N��S����`+ѿ���ᰊ��@'xN��<(rH&~�Y~��MH)�;�t�+*�︯��������l��zăSU����jm^�ҊF"׻��sD"��<�+}���O���P�x�4�˕�W�{�lm�9����!���բ����z��bf#�?���s�IJ�T������D��Y�l��2��h����L�+���4�?�T�� o���Z�4:�:^���%�fM�kY>�Xӗp�5B?��P�ƫG�#/�c��>:�T�
;k'�����0*(�<�<��$���QIYTNJ�fY4�E%���<dY��i���Y�?AX�%>%8Wfaz�)K�,J��g4��4�i��i�vYFâ{�h�,bMЎ�X��Y�Q�(�r|�Q��i��-�\��J8�^�)۫jG�Um-�Wxu�K~�t��r��u��r֮4�1fOٺ�~�l	�pk�5�>|	"9���􋟱q>=Q׭�zw}u���禹�Y�'qXy��,̎"����dG��|חܚ�ifʪS���f�߻�@��Jx��pZ�׈핰Q���Z��Kmɂ�v�����,�R��+"�4�����ֵ$^����ESn<�&��`N<�v͠�p���;6��[J��	�g��q�:�.^`~��׍+[~�Ԛ���^$� �CT��]�9��A��~��'ݽ�*�጑�P��Eag�<O��������ϡ��pu���f?h���^����Ia��k�+���B?5�7��b�0��s���3H���(��U=ێ@�J �C�٢�/��3���^[����lT�4�m�ؼ���aD��x}8���yJ��������i�}��̊��i�W�Q	�O�;�]�oE��c��~�f���{x��ې������$�FQ8��a�$.������{B      �   Y   x�}�A
�0��+���f����x���`��q�V���ZB���KE�@g�����܊x������Zex�1Z�+���� ��$I     