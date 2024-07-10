PGDMP  1            
        |            student    16.3    16.3 !                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    16399    student    DATABASE     z   CREATE DATABASE student WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE student;
                postgres    false            �            1259    16400    admin_details    TABLE     �   CREATE TABLE public.admin_details (
    name character(50) NOT NULL,
    username character(20) NOT NULL,
    password character(20) NOT NULL,
    email character(50) NOT NULL,
    phone character(10) NOT NULL
);
 !   DROP TABLE public.admin_details;
       public         heap    postgres    false            �            1259    16403    classes    TABLE     �   CREATE TABLE public.classes (
    classname character(20) NOT NULL,
    inchargeid character(20) NOT NULL,
    noofstudents bigint
);
    DROP TABLE public.classes;
       public         heap    postgres    false            �            1259    16406    courses    TABLE     �   CREATE TABLE public.courses (
    id character(10) NOT NULL,
    name character(50) NOT NULL,
    description character(100) NOT NULL,
    weeks bigint NOT NULL,
    maximum_capacity bigint NOT NULL
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    16409 	   incharges    TABLE     �   CREATE TABLE public.incharges (
    id character(20) NOT NULL,
    name character(50) NOT NULL,
    gender character(10) NOT NULL,
    "isClassIncharge" boolean NOT NULL
);
    DROP TABLE public.incharges;
       public         heap    postgres    false            �            1259    16412    user_class_details    TABLE     s   CREATE TABLE public.user_class_details (
    regno character(20) NOT NULL,
    classname character(10) NOT NULL
);
 &   DROP TABLE public.user_class_details;
       public         heap    postgres    false            �            1259    16415    user_courses    TABLE     f   CREATE TABLE public.user_courses (
    regno character(20) NOT NULL,
    id character(10) NOT NULL
);
     DROP TABLE public.user_courses;
       public         heap    postgres    false            �            1259    16418    user_details    TABLE     �   CREATE TABLE public.user_details (
    name character(50) NOT NULL,
    username character(20) NOT NULL,
    password character(20) NOT NULL,
    email character(50) NOT NULL,
    phone character(10) NOT NULL
);
     DROP TABLE public.user_details;
       public         heap    postgres    false            �            1259    16421    user_family_details    TABLE     �   CREATE TABLE public.user_family_details (
    rollno character(20) NOT NULL,
    fathersname character(50) NOT NULL,
    mothersname character(50) NOT NULL
);
 '   DROP TABLE public.user_family_details;
       public         heap    postgres    false            �            1259    16424    user_personal_details    TABLE     |  CREATE TABLE public.user_personal_details (
    fname character(50) NOT NULL,
    lname character(50),
    rollno character(20) NOT NULL,
    regno character(20) NOT NULL,
    email character(50) NOT NULL,
    phone character(10) NOT NULL,
    dob date NOT NULL,
    address character(200) NOT NULL,
    bloodgroup character(3) NOT NULL,
    dayorhostel character(20) NOT NULL
);
 )   DROP TABLE public.user_personal_details;
       public         heap    postgres    false            �            1259    16427    user_school_details    TABLE     �   CREATE TABLE public.user_school_details (
    rollno character(50) NOT NULL,
    tenthmark character(5) NOT NULL,
    twelfthmark character(5) NOT NULL
);
 '   DROP TABLE public.user_school_details;
       public         heap    postgres    false                      0    16400    admin_details 
   TABLE DATA           O   COPY public.admin_details (name, username, password, email, phone) FROM stdin;
    public          postgres    false    215   '&                 0    16403    classes 
   TABLE DATA           F   COPY public.classes (classname, inchargeid, noofstudents) FROM stdin;
    public          postgres    false    216   d&                 0    16406    courses 
   TABLE DATA           Q   COPY public.courses (id, name, description, weeks, maximum_capacity) FROM stdin;
    public          postgres    false    217   �&                 0    16409 	   incharges 
   TABLE DATA           H   COPY public.incharges (id, name, gender, "isClassIncharge") FROM stdin;
    public          postgres    false    218   H'                 0    16412    user_class_details 
   TABLE DATA           >   COPY public.user_class_details (regno, classname) FROM stdin;
    public          postgres    false    219   �(                 0    16415    user_courses 
   TABLE DATA           1   COPY public.user_courses (regno, id) FROM stdin;
    public          postgres    false    220   �(                 0    16418    user_details 
   TABLE DATA           N   COPY public.user_details (name, username, password, email, phone) FROM stdin;
    public          postgres    false    221   )                 0    16421    user_family_details 
   TABLE DATA           O   COPY public.user_family_details (rollno, fathersname, mothersname) FROM stdin;
    public          postgres    false    222   *)                 0    16424    user_personal_details 
   TABLE DATA           �   COPY public.user_personal_details (fname, lname, rollno, regno, email, phone, dob, address, bloodgroup, dayorhostel) FROM stdin;
    public          postgres    false    223   j)                 0    16427    user_school_details 
   TABLE DATA           M   COPY public.user_school_details (rollno, tenthmark, twelfthmark) FROM stdin;
    public          postgres    false    224   (*       t           2606    16431     admin_details admin_details_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.admin_details
    ADD CONSTRAINT admin_details_pkey PRIMARY KEY (username);
 J   ALTER TABLE ONLY public.admin_details DROP CONSTRAINT admin_details_pkey;
       public            postgres    false    215            v           2606    16433    classes classes_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (classname, inchargeid);
 >   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_pkey;
       public            postgres    false    216    216            x           2606    16435    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    217            z           2606    16437    incharges incharges_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.incharges
    ADD CONSTRAINT incharges_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.incharges DROP CONSTRAINT incharges_pkey;
       public            postgres    false    218            |           2606    16439 *   user_class_details user_class_details_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.user_class_details
    ADD CONSTRAINT user_class_details_pkey PRIMARY KEY (regno);
 T   ALTER TABLE ONLY public.user_class_details DROP CONSTRAINT user_class_details_pkey;
       public            postgres    false    219            ~           2606    16441    user_details user_details_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (username);
 H   ALTER TABLE ONLY public.user_details DROP CONSTRAINT user_details_pkey;
       public            postgres    false    221            �           2606    16443 ,   user_family_details user_family_details_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_family_details
    ADD CONSTRAINT user_family_details_pkey PRIMARY KEY (rollno);
 V   ALTER TABLE ONLY public.user_family_details DROP CONSTRAINT user_family_details_pkey;
       public            postgres    false    222            �           2606    16445 0   user_personal_details user_personal_details_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.user_personal_details
    ADD CONSTRAINT user_personal_details_pkey PRIMARY KEY (rollno, regno);
 Z   ALTER TABLE ONLY public.user_personal_details DROP CONSTRAINT user_personal_details_pkey;
       public            postgres    false    223    223            �           2606    16447 ,   user_school_details user_school_details_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_school_details
    ADD CONSTRAINT user_school_details_pkey PRIMARY KEY (rollno);
 V   ALTER TABLE ONLY public.user_school_details DROP CONSTRAINT user_school_details_pkey;
       public            postgres    false    224               -   x�KL���S p&bтGС��J/9?�8�-M,,L�L�=... ���            x�3�qT@�����F\1z\\\ �O         �   x�����@D뻯�/0��D���r��%�gnԿ���3/s>�y��,u�hR�jK��Ā&�Gl�x
I]�G����uy9.�%w���a�0��F��[0�f3��H䛯-r]��he��Lʧ��v�A��e�c��>��J��L�6Z�|�_�         Y  x����n�0E��+����.�/���B��`��86rU��5R���嬲��:c���=�O����%��Ѝ���JT��~e#_z&nJKp�{�D�>P��v��a�ж��5��a⾖���T��s�K���+(�RdSI��ģ���(��(�M�5�$�>�No�J�<L�qU�BH���/�0�N���`��2��I���]E0Dkc5=B��/i�J�N�*U0��
��5�XQ9)��Eɽ��~�H�����sa�m$*'e����05K�.�8�u��������-=B�6jf��le��,IO�FNo�R��9Hڶ��j[%��5�+�_�Y-��-�3��>O�,�|;4�         !   x�3400T@�F�!�&����>�=... b&	�            x�3400T@���!�a�=... i�r            x������ � �         0   x�3T��i�%�E�X�p��|R�p�S��դh����� `W&|         �   x�Ց=�@��ܯ�n{�:{.�.�.�+m�Џ�o���MbȔ�M^���n��L��	�������V�F_�����`"J�,	�	�9������Ajm��v�P��T4M1�4�9ǟ'
E��U���б���1�M0��U�J/��0�o�p�"8�u�J�;S�0         -   x�3T pZ陘qZX�Yp���L�HꙘr��qqq ~T�     