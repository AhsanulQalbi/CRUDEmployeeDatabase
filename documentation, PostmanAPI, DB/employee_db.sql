PGDMP     #    "    	            x            employee_db    13beta3    13beta3 &    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            T           1262    16446    employee_db    DATABASE     n   CREATE DATABASE employee_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE employee_db;
                postgres    false            �            1259    30748 	   Addresses    TABLE     8  CREATE TABLE public."Addresses" (
    id integer NOT NULL,
    employee_id integer,
    street character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    province character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    postal_code character varying(255) NOT NULL
);
    DROP TABLE public."Addresses";
       public         heap    postgres    false            �            1259    30746    Addresses_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Addresses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Addresses_id_seq";
       public          postgres    false    205            U           0    0    Addresses_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Addresses_id_seq" OWNED BY public."Addresses".id;
          public          postgres    false    204            �            1259    28578 	   Employees    TABLE       CREATE TABLE public."Employees" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255),
    email character varying(255) NOT NULL,
    picture character varying(255)
);
    DROP TABLE public."Employees";
       public         heap    postgres    false            �            1259    28576    Employees_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Employees_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Employees_id_seq";
       public          postgres    false    201            V           0    0    Employees_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Employees_id_seq" OWNED BY public."Employees".id;
          public          postgres    false    200            �            1259    30764    Phones    TABLE     �   CREATE TABLE public."Phones" (
    id integer NOT NULL,
    employee_id integer,
    phone_type character varying(255) NOT NULL,
    phone_number character varying(255) NOT NULL
);
    DROP TABLE public."Phones";
       public         heap    postgres    false            �            1259    30762    Phones_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Phones_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Phones_id_seq";
       public          postgres    false    207            W           0    0    Phones_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Phones_id_seq" OWNED BY public."Phones".id;
          public          postgres    false    206            �            1259    30733 	   employees    TABLE     E  CREATE TABLE public.employees (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255),
    email character varying(255) NOT NULL,
    picture character varying(255) NOT NULL,
    division character varying(255) NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    30731    employees_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public          postgres    false    203            X           0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
          public          postgres    false    202            �
           2604    30751    Addresses id    DEFAULT     p   ALTER TABLE ONLY public."Addresses" ALTER COLUMN id SET DEFAULT nextval('public."Addresses_id_seq"'::regclass);
 =   ALTER TABLE public."Addresses" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    28581    Employees id    DEFAULT     p   ALTER TABLE ONLY public."Employees" ALTER COLUMN id SET DEFAULT nextval('public."Employees_id_seq"'::regclass);
 =   ALTER TABLE public."Employees" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �
           2604    30767 	   Phones id    DEFAULT     j   ALTER TABLE ONLY public."Phones" ALTER COLUMN id SET DEFAULT nextval('public."Phones_id_seq"'::regclass);
 :   ALTER TABLE public."Phones" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    30736    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            L          0    30748 	   Addresses 
   TABLE DATA           d   COPY public."Addresses" (id, employee_id, street, city, province, country, postal_code) FROM stdin;
    public          postgres    false    205   *,       H          0    28578 	   Employees 
   TABLE DATA           Z   COPY public."Employees" (id, username, first_name, last_name, email, picture) FROM stdin;
    public          postgres    false    201   �,       N          0    30764    Phones 
   TABLE DATA           M   COPY public."Phones" (id, employee_id, phone_type, phone_number) FROM stdin;
    public          postgres    false    207   -       J          0    30733 	   employees 
   TABLE DATA           b   COPY public.employees (id, username, first_name, last_name, email, picture, division) FROM stdin;
    public          postgres    false    203   q-       Y           0    0    Addresses_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Addresses_id_seq"', 5, true);
          public          postgres    false    204            Z           0    0    Employees_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Employees_id_seq"', 1, false);
          public          postgres    false    200            [           0    0    Phones_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Phones_id_seq"', 5, true);
          public          postgres    false    206            \           0    0    employees_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.employees_id_seq', 5, true);
          public          postgres    false    202            �
           2606    30756    Addresses Addresses_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Addresses"
    ADD CONSTRAINT "Addresses_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Addresses" DROP CONSTRAINT "Addresses_pkey";
       public            postgres    false    205            �
           2606    28590    Employees Employees_email_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_email_key" UNIQUE (email);
 K   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_email_key";
       public            postgres    false    201            �
           2606    28586    Employees Employees_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_pkey";
       public            postgres    false    201            �
           2606    28588     Employees Employees_username_key 
   CONSTRAINT     c   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_username_key" UNIQUE (username);
 N   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_username_key";
       public            postgres    false    201            �
           2606    30772    Phones Phones_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Phones"
    ADD CONSTRAINT "Phones_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Phones" DROP CONSTRAINT "Phones_pkey";
       public            postgres    false    207            �
           2606    30745    employees employees_email_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_email_key UNIQUE (email);
 G   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_email_key;
       public            postgres    false    203            �
           2606    30741    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    203            �
           2606    30743     employees employees_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_username_key;
       public            postgres    false    203            �
           2606    30757 $   Addresses Addresses_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Addresses"
    ADD CONSTRAINT "Addresses_employee_id_fkey" FOREIGN KEY (employee_id) REFERENCES public.employees(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public."Addresses" DROP CONSTRAINT "Addresses_employee_id_fkey";
       public          postgres    false    2748    203    205            �
           2606    30773    Phones Phones_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Phones"
    ADD CONSTRAINT "Phones_employee_id_fkey" FOREIGN KEY (employee_id) REFERENCES public.employees(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public."Phones" DROP CONSTRAINT "Phones_employee_id_fkey";
       public          postgres    false    207    203    2748            L   �   x�}N�JA<�|�|����F=�!� ��/-���v�<������"UPԡ����i�s����Y[]8��EI$���t���
NDx�R��yw���cK9-��g��ǯ����������r����D3`�$*��r`)��A����'��?�R3�H�no�7�`F���{T��wk�g��+c�7�LW+      H      x������ � �      N   Q   x�3�4���O��IU���K�442� .#N#T)KKs3S#.cNcT)��,�	�	���!�@������A�W� �-"�      J   �   x�]��
�0Eד�P[q+�R���[!i)c^�V�};���͙�s3%h�WF���w����"�By_HF�z�p��y̨�؂%�pc4�5��Q��|��hosv���_���lВ��Ka]g~Ldd�?x7Ǌzt48�ёR������ZR"�X����[�6��C����S��2r��,�?i�r�     