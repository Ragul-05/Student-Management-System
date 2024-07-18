PGDMP  
    0                |            student    16.3    16.3 *    1           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            4           1262    16456    student    DATABASE     z   CREATE DATABASE student WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE student;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            5           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16457    admin_details    TABLE     �   CREATE TABLE public.admin_details (
    name character(50) NOT NULL,
    username character(20) NOT NULL,
    password character(20) NOT NULL,
    email character(50) NOT NULL,
    phone character(10) NOT NULL
);
 !   DROP TABLE public.admin_details;
       public         heap    postgres    false    4            �            1259    16460    class_courses    TABLE     �   CREATE TABLE public.class_courses (
    classname character(5) NOT NULL,
    courseid character(10) NOT NULL,
    facultyid character(10) NOT NULL,
    facultyname character(50) NOT NULL
);
 !   DROP TABLE public.class_courses;
       public         heap    postgres    false    4            �            1259    16463    classes    TABLE     �   CREATE TABLE public.classes (
    classname character(20) NOT NULL,
    inchargeid character(20) NOT NULL,
    noofstudents bigint
);
    DROP TABLE public.classes;
       public         heap    postgres    false    4            �            1259    16466    courses    TABLE     �   CREATE TABLE public.courses (
    id character(10) NOT NULL,
    name character(50) NOT NULL,
    description character(100) NOT NULL,
    weeks bigint NOT NULL,
    maximum_capacity bigint NOT NULL
);
    DROP TABLE public.courses;
       public         heap    postgres    false    4            �            1259    16539    exam_schedule    TABLE     �  CREATE TABLE public.exam_schedule (
    courseid character(50) NOT NULL,
    coursename character(10020) NOT NULL,
    exam_date date NOT NULL,
    start_time time with time zone NOT NULL,
    end_time time with time zone NOT NULL,
    exam_type character(20) NOT NULL,
    hall_no character(20) NOT NULL,
    examinerid character(100) NOT NULL,
    total_duration bigint NOT NULL,
    maximum_marks bigint NOT NULL,
    class_name character(50) NOT NULL,
    noofstudents bigint NOT NULL
);
 !   DROP TABLE public.exam_schedule;
       public         heap    postgres    false    4            �            1259    16469 	   faculties    TABLE     �   CREATE TABLE public.faculties (
    facultyid character(10) NOT NULL,
    facultyname character(50) NOT NULL,
    email character(50) NOT NULL
);
    DROP TABLE public.faculties;
       public         heap    postgres    false    4            �            1259    16472 	   incharges    TABLE     �   CREATE TABLE public.incharges (
    id character(20) NOT NULL,
    name character(50) NOT NULL,
    gender character(10) NOT NULL,
    "isClassIncharge" boolean NOT NULL
);
    DROP TABLE public.incharges;
       public         heap    postgres    false    4            �            1259    16475    user_class_details    TABLE     s   CREATE TABLE public.user_class_details (
    regno character(20) NOT NULL,
    classname character(10) NOT NULL
);
 &   DROP TABLE public.user_class_details;
       public         heap    postgres    false    4            �            1259    16478    user_courses    TABLE     f   CREATE TABLE public.user_courses (
    regno character(20) NOT NULL,
    id character(10) NOT NULL
);
     DROP TABLE public.user_courses;
       public         heap    postgres    false    4            �            1259    16481    user_details    TABLE     �   CREATE TABLE public.user_details (
    name character(50) NOT NULL,
    username character(20) NOT NULL,
    password character(20) NOT NULL,
    email character(50) NOT NULL,
    phone character(10) NOT NULL
);
     DROP TABLE public.user_details;
       public         heap    postgres    false    4            �            1259    16484    user_family_details    TABLE     �   CREATE TABLE public.user_family_details (
    rollno character(20) NOT NULL,
    fathersname character(50) NOT NULL,
    mothersname character(50) NOT NULL
);
 '   DROP TABLE public.user_family_details;
       public         heap    postgres    false    4            �            1259    16487    user_personal_details    TABLE     |  CREATE TABLE public.user_personal_details (
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
       public         heap    postgres    false    4            �            1259    16490    user_school_details    TABLE     �   CREATE TABLE public.user_school_details (
    rollno character(50) NOT NULL,
    tenthmark character(5) NOT NULL,
    twelfthmark character(5) NOT NULL
);
 '   DROP TABLE public.user_school_details;
       public         heap    postgres    false    4            "          0    16457    admin_details 
   TABLE DATA           O   COPY public.admin_details (name, username, password, email, phone) FROM stdin;
    public          postgres    false    215   d1       #          0    16460    class_courses 
   TABLE DATA           T   COPY public.class_courses (classname, courseid, facultyid, facultyname) FROM stdin;
    public          postgres    false    216   �1       $          0    16463    classes 
   TABLE DATA           F   COPY public.classes (classname, inchargeid, noofstudents) FROM stdin;
    public          postgres    false    217   2       %          0    16466    courses 
   TABLE DATA           Q   COPY public.courses (id, name, description, weeks, maximum_capacity) FROM stdin;
    public          postgres    false    218   ;2       .          0    16539    exam_schedule 
   TABLE DATA           �   COPY public.exam_schedule (courseid, coursename, exam_date, start_time, end_time, exam_type, hall_no, examinerid, total_duration, maximum_marks, class_name, noofstudents) FROM stdin;
    public          postgres    false    227   �4       &          0    16469 	   faculties 
   TABLE DATA           B   COPY public.faculties (facultyid, facultyname, email) FROM stdin;
    public          postgres    false    219   �4       '          0    16472 	   incharges 
   TABLE DATA           H   COPY public.incharges (id, name, gender, "isClassIncharge") FROM stdin;
    public          postgres    false    220   P7       (          0    16475    user_class_details 
   TABLE DATA           >   COPY public.user_class_details (regno, classname) FROM stdin;
    public          postgres    false    221   �8       )          0    16478    user_courses 
   TABLE DATA           1   COPY public.user_courses (regno, id) FROM stdin;
    public          postgres    false    222   �8       *          0    16481    user_details 
   TABLE DATA           N   COPY public.user_details (name, username, password, email, phone) FROM stdin;
    public          postgres    false    223   %9       +          0    16484    user_family_details 
   TABLE DATA           O   COPY public.user_family_details (rollno, fathersname, mothersname) FROM stdin;
    public          postgres    false    224   B9       ,          0    16487    user_personal_details 
   TABLE DATA           �   COPY public.user_personal_details (fname, lname, rollno, regno, email, phone, dob, address, bloodgroup, dayorhostel) FROM stdin;
    public          postgres    false    225   �9       -          0    16490    user_school_details 
   TABLE DATA           M   COPY public.user_school_details (rollno, tenthmark, twelfthmark) FROM stdin;
    public          postgres    false    226   @:       �           2606    16494     admin_details admin_details_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.admin_details
    ADD CONSTRAINT admin_details_pkey PRIMARY KEY (username);
 J   ALTER TABLE ONLY public.admin_details DROP CONSTRAINT admin_details_pkey;
       public            postgres    false    215            �           2606    16496    classes classes_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (classname, inchargeid);
 >   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_pkey;
       public            postgres    false    217    217            �           2606    16498    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    218            �           2606    16500    faculties faculties_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_pkey PRIMARY KEY (facultyid, email);
 B   ALTER TABLE ONLY public.faculties DROP CONSTRAINT faculties_pkey;
       public            postgres    false    219    219            �           2606    16502    incharges incharges_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.incharges
    ADD CONSTRAINT incharges_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.incharges DROP CONSTRAINT incharges_pkey;
       public            postgres    false    220            �           2606    16504 *   user_class_details user_class_details_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.user_class_details
    ADD CONSTRAINT user_class_details_pkey PRIMARY KEY (regno);
 T   ALTER TABLE ONLY public.user_class_details DROP CONSTRAINT user_class_details_pkey;
       public            postgres    false    221            �           2606    16506    user_details user_details_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (username);
 H   ALTER TABLE ONLY public.user_details DROP CONSTRAINT user_details_pkey;
       public            postgres    false    223            �           2606    16508 ,   user_family_details user_family_details_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_family_details
    ADD CONSTRAINT user_family_details_pkey PRIMARY KEY (rollno);
 V   ALTER TABLE ONLY public.user_family_details DROP CONSTRAINT user_family_details_pkey;
       public            postgres    false    224            �           2606    16510 0   user_personal_details user_personal_details_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.user_personal_details
    ADD CONSTRAINT user_personal_details_pkey PRIMARY KEY (rollno, regno);
 Z   ALTER TABLE ONLY public.user_personal_details DROP CONSTRAINT user_personal_details_pkey;
       public            postgres    false    225    225            �           2606    16512 ,   user_school_details user_school_details_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_school_details
    ADD CONSTRAINT user_school_details_pkey PRIMARY KEY (rollno);
 V   ALTER TABLE ONLY public.user_school_details DROP CONSTRAINT user_school_details_pkey;
       public            postgres    false    226            "   -   x�KL���S p&bтGС��J/9?�8�-M,,L�L�=... ���      #   P   x�3�qT���440T N7GS0�1/3G�1=��<1G�(�e6���fB��4/%5-3/5�8���9QѸ=... �x)�      $   *   x�3�qT@�����\F�!NX����q��qqq ���      %   ^  x����n�0Ư���T)0��?٠*��Hդ��XK��v�������t�D9�����h�%��.�$�:��b2�K�5\
LE���p �
Z���-�0B�0�,�{�MZi��%�<�\$ؤ�5��~�*�o�;��փ��I/��%[�Gw�(�֌�`���2߁����`��<�,���M+<���E���I�W]��P\0^d�1��׃�4��W:�2�I�#�AN�����\%�i���Ri��������/���[�`$�(�(��n�h4��[wK�7�I��	=��8�<����@�&1~�ڃ�[��Y/������p�:?��HC������[QA�m�1������Ճ�K�c�Z���V>�O��%�zG_`��p�L5d�㡳���ǝ����������ׄ)^�ȏgiN��9��1b�xuV�=G۔z�F�L_e,
�hlg�sځS��9���aB�����w҉Ev��j��U�Q���ft4֤]��W�OL��������R�Ե�E�������Pm2�^��%޺��D��Ƚy�
��� P�����K@G�6X�Y��C7�?� ����l      .      x������ � �      &   z  x���In1E׭S��$gܥ�d�h�M�"Dv7�{pt�T���@�5���z�\)z�3X��<D�zUL�n	�f���vF���}d��L�:X���WB����]�k�F8Yup�by��=�RL�2}����̎W�����3"����Rap��/_�c
"2"h駷
=u4�R���ٰG�?gz�[7��udFB����Lo�	�v0fGU�	�WB$�_3}tm�~��enM5'D7��g�Zfz�"�p=�>DZBt��Y_,NS�:���1�����tU���f����ܘ�3!8CB--N����ޜ�L=�6Bt$DRaq�g7������"�=!��4�jP��Ͱg8$D;D$��i�8�s]l/D�5!��4O��;lj�O��6vZ����H|��[�}BDRaq�7c o W���gBt��Y���l!��na��l�'D�d����۟&����L��{g�`q�z�}��Xh'nK�=&D���4�Ƃ$+���dE,N���-|�*�ɷ-	�y��$��q���ς�i�����aB$����0e,^"?��!#�N��ipKAꥈȽt]��n��-�L9DD�}1�Ӡ֌�6A V��Hq�W/��i,�{      '   ^  x����n�0E��+����.�/��P�J�0�V9�*���*��aa٫,�����N�y~��s�;���5��Ng���ϯl�M/B�}%Us�j��y���mM/�¢.a,�"�Jz*-.	FDq�GIoBŠ�)��a�z�dZ�b���B�hT6~Q��'t���3l���WNz*Fے����:��)h��h�L�T���lP@W�������(��آ�O)�+9���0�&����m��01�.�8�u��4����ؖ!e�����w:]�"MC�S֨�mb퓪T*i���*�e�)�iWI����t"�����ϔ5�3JK��D���>���Y�����w��I�e��+4�      (   !   x�3400T@�F�!�&����>�=... b&	�      )   &   x�3400T@���!�a.C#ygW�|� ic
*      *      x������ � �      +   0   x�3T��i�%�E�X�p��|R�p�S��դh����� `W&|      ,   �   x�Ց=�@��ܯ�n{�:{.�.�.�+m�Џ�o���MbȔ�M^���n��L��	�������V�F_�����`"J�,	�	�9������Ajm��v�P��T4M1�4�9ǟ'
E��U���б���1�M0��U�J/��0�o�p�"8�u�J�;S�0      -   -   x�3T pZ陘qZX�Yp���L�HꙘr��qqq ~T�     