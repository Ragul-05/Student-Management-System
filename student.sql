PGDMP  3    6                |            student    16.3    16.3 !                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    16477    student    DATABASE     z   CREATE DATABASE student WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE student;
                postgres    false            �            1259    16478    admin_details    TABLE     �   CREATE TABLE public.admin_details (
    name character(50) NOT NULL,
    username character(20) NOT NULL,
    password character(20) NOT NULL,
    email character(50) NOT NULL,
    phone character(10) NOT NULL
);
 !   DROP TABLE public.admin_details;
       public         heap    postgres    false            �            1259    16481    classes    TABLE     �   CREATE TABLE public.classes (
    classname character(20) NOT NULL,
    inchargeid character(20) NOT NULL,
    noofstudents bigint
);
    DROP TABLE public.classes;
       public         heap    postgres    false            �            1259    16484    courses    TABLE     �   CREATE TABLE public.courses (
    id character(10) NOT NULL,
    name character(50) NOT NULL,
    description character(100) NOT NULL,
    weeks bigint NOT NULL,
    maximum_capacity bigint NOT NULL
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    16487 	   incharges    TABLE     �   CREATE TABLE public.incharges (
    id character(20) NOT NULL,
    name character(50) NOT NULL,
    gender character(10) NOT NULL,
    "isClassIncharge" boolean NOT NULL
);
    DROP TABLE public.incharges;
       public         heap    postgres    false            �            1259    16490    user_class_details    TABLE     s   CREATE TABLE public.user_class_details (
    regno character(20) NOT NULL,
    classname character(10) NOT NULL
);
 &   DROP TABLE public.user_class_details;
       public         heap    postgres    false            �            1259    16493    user_courses    TABLE     f   CREATE TABLE public.user_courses (
    regno character(20) NOT NULL,
    id character(10) NOT NULL
);
     DROP TABLE public.user_courses;
       public         heap    postgres    false            �            1259    16496    user_details    TABLE     �   CREATE TABLE public.user_details (
    name character(50) NOT NULL,
    username character(20) NOT NULL,
    password character(20) NOT NULL,
    email character(50) NOT NULL,
    phone character(10) NOT NULL
);
     DROP TABLE public.user_details;
       public         heap    postgres    false            �            1259    16499    user_family_details    TABLE     �   CREATE TABLE public.user_family_details (
    rollno character(20) NOT NULL,
    fathersname character(50) NOT NULL,
    mothersname character(50) NOT NULL
);
 '   DROP TABLE public.user_family_details;
       public         heap    postgres    false            �            1259    16502    user_personal_details    TABLE     |  CREATE TABLE public.user_personal_details (
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
       public         heap    postgres    false            �            1259    16505    user_school_details    TABLE     �   CREATE TABLE public.user_school_details (
    rollno character(50) NOT NULL,
    tenthmark character(5) NOT NULL,
    twelfthmark character(5) NOT NULL
);
 '   DROP TABLE public.user_school_details;
       public         heap    postgres    false                      0    16478    admin_details 
   TABLE DATA                 public          postgres    false    215   #                 0    16481    classes 
   TABLE DATA                 public          postgres    false    216   �#                 0    16484    courses 
   TABLE DATA                 public          postgres    false    217   $                 0    16487 	   incharges 
   TABLE DATA                 public          postgres    false    218   !%                 0    16490    user_class_details 
   TABLE DATA                 public          postgres    false    219   �&                 0    16493    user_courses 
   TABLE DATA                 public          postgres    false    220   X'                 0    16496    user_details 
   TABLE DATA                 public          postgres    false    221   �'                 0    16499    user_family_details 
   TABLE DATA                 public          postgres    false    222   �'                 0    16502    user_personal_details 
   TABLE DATA                 public          postgres    false    223   d(                 0    16505    user_school_details 
   TABLE DATA                 public          postgres    false    224   �)       t           2606    16509     admin_details admin_details_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.admin_details
    ADD CONSTRAINT admin_details_pkey PRIMARY KEY (username);
 J   ALTER TABLE ONLY public.admin_details DROP CONSTRAINT admin_details_pkey;
       public            postgres    false    215            v           2606    16511    classes classes_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (classname, inchargeid);
 >   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_pkey;
       public            postgres    false    216    216            x           2606    16513    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    217            z           2606    16515    incharges incharges_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.incharges
    ADD CONSTRAINT incharges_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.incharges DROP CONSTRAINT incharges_pkey;
       public            postgres    false    218            |           2606    16517 *   user_class_details user_class_details_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.user_class_details
    ADD CONSTRAINT user_class_details_pkey PRIMARY KEY (regno);
 T   ALTER TABLE ONLY public.user_class_details DROP CONSTRAINT user_class_details_pkey;
       public            postgres    false    219            ~           2606    16519    user_details user_details_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (username);
 H   ALTER TABLE ONLY public.user_details DROP CONSTRAINT user_details_pkey;
       public            postgres    false    221            �           2606    16521 ,   user_family_details user_family_details_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_family_details
    ADD CONSTRAINT user_family_details_pkey PRIMARY KEY (rollno);
 V   ALTER TABLE ONLY public.user_family_details DROP CONSTRAINT user_family_details_pkey;
       public            postgres    false    222            �           2606    16523 0   user_personal_details user_personal_details_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.user_personal_details
    ADD CONSTRAINT user_personal_details_pkey PRIMARY KEY (rollno, regno);
 Z   ALTER TABLE ONLY public.user_personal_details DROP CONSTRAINT user_personal_details_pkey;
       public            postgres    false    223    223            �           2606    16525 ,   user_school_details user_school_details_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_school_details
    ADD CONSTRAINT user_school_details_pkey PRIMARY KEY (rollno);
 V   ALTER TABLE ONLY public.user_school_details DROP CONSTRAINT user_school_details_pkey;
       public            postgres    false    224               w   x���v
Q���W((M��L�KL��̋OI-I��)V��K�M�Q(-N-��
����RtRs�*��y��
a�>���
�`�
� u���;TTV�%��m�����)��i��� �9�         f   x���v
Q���W((M��L�K�I,.N-V� 3�sSu2�3��S3St���ӊKJSR�J�5�}B]�4ԍ<CЀ����g���!����5 �!"         �   x���=k�@�ݿB�8J�f(t�`C��-t*gY�E|w�>���{�K�KC�w�@Hz�r��UP��+��������Z*АC˃g�쉶N��VA}�$�?N�c��o`���s6� &����u���Sh�
�Q�KA��R,vt,97�/K�s?0ϦOIq����b��;�5;��u��x�V��7�o.|�/��V�Eu���;��w�����y+уC&��tP5٫B<<F�$�q:�G         �  x�͗�k�0���W\��BI����)ݲ�]>�8m��s_,KA�;���6�A�Th��f��9�8ґ�y:Y� ����6���Y�vG�y��%�aGzK�g�(t.9~tփ���a��y7y>����C�+>�n���!�i�f����oT�z7���~�'%��Y9跙�F���;��,	[��X)�-�{)��L�¼Ƥ{-'7����Mv�A���9�`���0
�?��dY��L@~��	�Ӫ �Ckٵ��I�v�a��s�6��Ts�9���Ѝ7]�&���x�o��J5�|��ܔ�@���J5�b�ai6d}�b�F�J^ꕶFU�vp<�R��f���M3�}��tGR�5�EW�J���@
�i{�z�m�+���+AZ��_a�$�V��V*�z�-As�,�h�G��pk6por|��:�#�em         c   x���v
Q���W((M��L�+-N-�O�I,.�OI-I��)V�(JM���Q ��%�j*�9���+h�*�uu#�G(OӚ˓���� e�8^         S   x���v
Q���W((M��L�+-N-�O�/-*N-V�(JM���Q�L�Ts�	uV�P7400T@�:
꾎!�uMk... <         
   x���                x���v
Q���W((M��L�+-N-�OK��̩�OI-I��)V�(������QHK,�H-*�K�M�Q�͇s4�}B]�4�0����:D+6Y\ �bI�4��<��-#<�#�[$�z�� /
cb           x�ՒAk� ����`����2(#t�`�v-��$`4hrط��v��e�����|�,/6o;���+tC)�C<���FI*����V����E+!���+'���t���d�D@���P�UZ�u�ҵ2=k�H��7�B����!�0Yp��(����r��ܒ�ʕT{�+?���G8��{��v9����M�xq1>\-鍗���멽��k����.r�`<�;�03&t��t�I�'��_���du3�N�Aw��F��<]��ֹm�
�o���<         �   x���v
Q���W((M��L�+-N-�/N���ωOI-I��)V�(������Q(I�+��M,�2�Ss� M�0G�P�`uCR����������aa�gf��i��Im���03=3�P���0.. ��M&     