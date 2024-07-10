PGDMP      +                |            student    16.3    16.3 !                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    16419    student    DATABASE     z   CREATE DATABASE student WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE student;
                postgres    false            �            1259    16425    admin_details    TABLE     �   CREATE TABLE public.admin_details (
    name character(50) NOT NULL,
    username character(20) NOT NULL,
    password character(20) NOT NULL,
    email character(50) NOT NULL,
    phone character(10) NOT NULL
);
 !   DROP TABLE public.admin_details;
       public         heap    postgres    false            �            1259    16467    classes    TABLE     �   CREATE TABLE public.classes (
    classname character(20) NOT NULL,
    inchargeid character(20) NOT NULL,
    noofstudents bigint
);
    DROP TABLE public.classes;
       public         heap    postgres    false            �            1259    16449    courses    TABLE     `   CREATE TABLE public.courses (
    id character(10) NOT NULL,
    name character(50) NOT NULL
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    16462 	   incharges    TABLE     �   CREATE TABLE public.incharges (
    id character(20) NOT NULL,
    name character(50) NOT NULL,
    gender character(10) NOT NULL,
    "isClassIncharge" boolean NOT NULL
);
    DROP TABLE public.incharges;
       public         heap    postgres    false            �            1259    16472    user_class_details    TABLE     s   CREATE TABLE public.user_class_details (
    regno character(20) NOT NULL,
    classname character(10) NOT NULL
);
 &   DROP TABLE public.user_class_details;
       public         heap    postgres    false            �            1259    16454    user_courses    TABLE     f   CREATE TABLE public.user_courses (
    regno character(20) NOT NULL,
    id character(10) NOT NULL
);
     DROP TABLE public.user_courses;
       public         heap    postgres    false            �            1259    16420    user_details    TABLE     �   CREATE TABLE public.user_details (
    name character(50) NOT NULL,
    username character(20) NOT NULL,
    password character(20) NOT NULL,
    email character(50) NOT NULL,
    phone character(10) NOT NULL
);
     DROP TABLE public.user_details;
       public         heap    postgres    false            �            1259    16439    user_family_details    TABLE     �   CREATE TABLE public.user_family_details (
    rollno character(20) NOT NULL,
    fathersname character(50) NOT NULL,
    mothersname character(50) NOT NULL
);
 '   DROP TABLE public.user_family_details;
       public         heap    postgres    false            �            1259    16430    user_personal_details    TABLE     |  CREATE TABLE public.user_personal_details (
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
       public         heap    postgres    false            �            1259    16444    user_school_details    TABLE     �   CREATE TABLE public.user_school_details (
    rollno character(50) NOT NULL,
    tenthmark character(5) NOT NULL,
    twelfthmark character(5) NOT NULL
);
 '   DROP TABLE public.user_school_details;
       public         heap    postgres    false                      0    16425    admin_details 
   TABLE DATA                 public          postgres    false    216   �"                 0    16467    classes 
   TABLE DATA                 public          postgres    false    223   <#                 0    16449    courses 
   TABLE DATA                 public          postgres    false    220   �#                 0    16462 	   incharges 
   TABLE DATA                 public          postgres    false    222   b$                 0    16472    user_class_details 
   TABLE DATA                 public          postgres    false    224   &                 0    16454    user_courses 
   TABLE DATA                 public          postgres    false    221   �&                 0    16420    user_details 
   TABLE DATA                 public          postgres    false    215   �&                 0    16439    user_family_details 
   TABLE DATA                 public          postgres    false    218   '                 0    16430    user_personal_details 
   TABLE DATA                 public          postgres    false    217   �'                 0    16444    user_school_details 
   TABLE DATA                 public          postgres    false    219   �(       v           2606    16429     admin_details admin_details_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.admin_details
    ADD CONSTRAINT admin_details_pkey PRIMARY KEY (username);
 J   ALTER TABLE ONLY public.admin_details DROP CONSTRAINT admin_details_pkey;
       public            postgres    false    216            �           2606    16471    classes classes_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (classname, inchargeid);
 >   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_pkey;
       public            postgres    false    223    223            ~           2606    16453    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    220            �           2606    16466    incharges incharges_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.incharges
    ADD CONSTRAINT incharges_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.incharges DROP CONSTRAINT incharges_pkey;
       public            postgres    false    222            �           2606    16476 *   user_class_details user_class_details_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.user_class_details
    ADD CONSTRAINT user_class_details_pkey PRIMARY KEY (regno);
 T   ALTER TABLE ONLY public.user_class_details DROP CONSTRAINT user_class_details_pkey;
       public            postgres    false    224            t           2606    16424    user_details user_details_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (username);
 H   ALTER TABLE ONLY public.user_details DROP CONSTRAINT user_details_pkey;
       public            postgres    false    215            z           2606    16443 ,   user_family_details user_family_details_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_family_details
    ADD CONSTRAINT user_family_details_pkey PRIMARY KEY (rollno);
 V   ALTER TABLE ONLY public.user_family_details DROP CONSTRAINT user_family_details_pkey;
       public            postgres    false    218            x           2606    16434 0   user_personal_details user_personal_details_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.user_personal_details
    ADD CONSTRAINT user_personal_details_pkey PRIMARY KEY (rollno, regno);
 Z   ALTER TABLE ONLY public.user_personal_details DROP CONSTRAINT user_personal_details_pkey;
       public            postgres    false    217    217            |           2606    16448 ,   user_school_details user_school_details_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_school_details
    ADD CONSTRAINT user_school_details_pkey PRIMARY KEY (rollno);
 V   ALTER TABLE ONLY public.user_school_details DROP CONSTRAINT user_school_details_pkey;
       public            postgres    false    219               w   x���v
Q���W((M��L�KL��̋OI-I��)V��K�M�Q(-N-��
����RtRs�*��y��
a�>���
�`�
� u���;TTV�%��m�����)��i��� �9�         f   x���v
Q���W((M��L�K�I,.N-V� 3�sSu2�3��S3St���ӊKJSR�J�5�}B]�4ԍ<CЀ����g���!����5 �*!$         �   x���A�0�ỿ�MA"ϝDFҤ�����>p*n;���n-��/k9�`�8��ʝ��b���9��Q��ӕrH�(�b_�'���b"�!aq$m�I�׀VoK6�Ȧw�n}������jQƠ�UM��ʠu˺)ɿ���ީ�D5J��$oX��         �  x�͕�K�@���+�^�P��[<U��6���4�%�ݲ��Կ��P��
�do�̾Ǐ��QܟL!Mǰ.R$GB%)�Y8�6(̩+RK2mh
{+��h�S��z�Y?��V4�t�a���к�xҩ�Z�ߩ��(�������F��vO�r@�;��o�����{�W>�pc�g��1��\�-̅�NC0�眰A��PHI�ft/��	����kH�W�pdqAR"��B��d��a��0�`�
�7T�]F�]JF(�)n���o0�\M�����]���r51�*�q�f�����Hc
�j�w�����X���^��]�&^ȕ�0Mu����.W��P
&zA��=�`t/�ɶ|is��o��˵Z��i��8����A��k�*�h��+e��v�0<�2[(�LV7�\	��[	�\��v���LQ�m4��zem         c   x���v
Q���W((M��L�+-N-�O�I,.�OI-I��)V�(JM���Q ��%�j*�9���+h�*�uu#�G(OӚ˓���� e�8^         S   x���v
Q���W((M��L�+-N-�O�/-*N-V�(JM���Q�L�Ts�	uV�P7400T@�:
꾎!�uMk... <         
   x���                x���v
Q���W((M��L�+-N-�OK��̩�OI-I��)V�(������QHK,�H-*�K�M�Q�͇s4�}B]�4�0����:D+6Y\ �bI�4��<��-#<�#�[$�z�� /
cb           x�ՒAk� ����`����2(#t�`�v-��$`4hrط��v��e�����|�,/6o;���+tC)�C<���FI*����V����E+!���+'���t���d�D@���P�UZ�u�ҵ2=k�H��7�B����!�0Yp��(����r��ܒ�ʕT{�+?���G8��{��v9����M�xq1>\-鍗���멽��k����.r�`<�;�03&t��t�I�'��_���du3�N�Aw��F��<]��ֹm�
�o���<         �   x���v
Q���W((M��L�+-N-�/N���ωOI-I��)V�(������Q(I�+��M,�2�Ss� M�0G�P�`uCR����������aa�gf��i��Im���03=3�P���0.. ��M&     