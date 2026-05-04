.class public final enum Lcom/android/dx/dex/file/ItemType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dx/dex/file/ItemType;",
        ">;",
        "Lcom/android/dx/util/ToHuman;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_REF_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_REF_LIST:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CALL_SITE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CLASS_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CLASS_DEF_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_DEBUG_INFO_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ENCODED_ARRAY_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_EXCEPTION_HANDLER_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_FIELD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_HEADER_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_METHOD_HANDLE_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_METHOD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_PROTO_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_STRING_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_STRING_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_LIST:Lcom/android/dx/dex/file/ItemType;


# instance fields
.field private final humanName:Ljava/lang/String;

.field private final mapValue:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 50

    .line 25
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    const-string v1, "header_item"

    const-string v2, "TYPE_HEADER_ITEM"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_HEADER_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 26
    new-instance v1, Lcom/android/dx/dex/file/ItemType;

    const-string v2, "string_id_item"

    const-string v4, "TYPE_STRING_ID_ITEM"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 27
    new-instance v2, Lcom/android/dx/dex/file/ItemType;

    const-string v4, "type_id_item"

    const-string v6, "TYPE_TYPE_ID_ITEM"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v7, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 28
    new-instance v4, Lcom/android/dx/dex/file/ItemType;

    const-string v6, "proto_id_item"

    const-string v8, "TYPE_PROTO_ID_ITEM"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v9, v6}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/android/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 29
    new-instance v6, Lcom/android/dx/dex/file/ItemType;

    const-string v8, "field_id_item"

    const-string v10, "TYPE_FIELD_ID_ITEM"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v11, v8}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/android/dx/dex/file/ItemType;->TYPE_FIELD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 30
    new-instance v8, Lcom/android/dx/dex/file/ItemType;

    const-string v10, "method_id_item"

    const-string v12, "TYPE_METHOD_ID_ITEM"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v13, v10}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/android/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 31
    new-instance v10, Lcom/android/dx/dex/file/ItemType;

    const-string v12, "class_def_item"

    const-string v14, "TYPE_CLASS_DEF_ITEM"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v15, v12}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 32
    new-instance v12, Lcom/android/dx/dex/file/ItemType;

    const-string v14, "call_site_id_item"

    move/from16 v16, v3

    const-string v3, "TYPE_CALL_SITE_ID_ITEM"

    move/from16 v17, v5

    const/4 v5, 0x7

    invoke-direct {v12, v3, v5, v5, v14}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/android/dx/dex/file/ItemType;->TYPE_CALL_SITE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 33
    new-instance v3, Lcom/android/dx/dex/file/ItemType;

    const-string v14, "method_handle_item"

    move/from16 v18, v5

    const-string v5, "TYPE_METHOD_HANDLE_ITEM"

    move/from16 v19, v7

    const/16 v7, 0x8

    invoke-direct {v3, v5, v7, v7, v14}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/android/dx/dex/file/ItemType;->TYPE_METHOD_HANDLE_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 34
    new-instance v5, Lcom/android/dx/dex/file/ItemType;

    const/16 v14, 0x1000

    move/from16 v20, v7

    const-string v7, "map_list"

    move/from16 v21, v9

    const-string v9, "TYPE_MAP_LIST"

    move/from16 v22, v11

    const/16 v11, 0x9

    invoke-direct {v5, v9, v11, v14, v7}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    .line 35
    new-instance v7, Lcom/android/dx/dex/file/ItemType;

    const/16 v9, 0x1001

    const-string v14, "type_list"

    move/from16 v23, v11

    const-string v11, "TYPE_TYPE_LIST"

    move/from16 v24, v13

    const/16 v13, 0xa

    invoke-direct {v7, v11, v13, v9, v14}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/android/dx/dex/file/ItemType;

    .line 36
    new-instance v9, Lcom/android/dx/dex/file/ItemType;

    const/16 v11, 0x1002

    const-string v14, "annotation_set_ref_list"

    move/from16 v25, v13

    const-string v13, "TYPE_ANNOTATION_SET_REF_LIST"

    move/from16 v26, v15

    const/16 v15, 0xb

    invoke-direct {v9, v13, v15, v11, v14}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_LIST:Lcom/android/dx/dex/file/ItemType;

    .line 37
    new-instance v11, Lcom/android/dx/dex/file/ItemType;

    const/16 v13, 0x1003

    const-string v14, "annotation_set_item"

    move/from16 v27, v15

    const-string v15, "TYPE_ANNOTATION_SET_ITEM"

    move-object/from16 v28, v0

    const/16 v0, 0xc

    invoke-direct {v11, v15, v0, v13, v14}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 38
    new-instance v13, Lcom/android/dx/dex/file/ItemType;

    const/16 v14, 0x2000

    const-string v15, "class_data_item"

    move/from16 v29, v0

    const-string v0, "TYPE_CLASS_DATA_ITEM"

    move-object/from16 v30, v1

    const/16 v1, 0xd

    invoke-direct {v13, v0, v1, v14, v15}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 39
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    const/16 v14, 0x2001

    const-string v15, "code_item"

    move/from16 v31, v1

    const-string v1, "TYPE_CODE_ITEM"

    move-object/from16 v32, v2

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 40
    new-instance v1, Lcom/android/dx/dex/file/ItemType;

    const/16 v14, 0x2002

    const-string v15, "string_data_item"

    move/from16 v33, v2

    const-string v2, "TYPE_STRING_DATA_ITEM"

    move-object/from16 v34, v0

    const/16 v0, 0xf

    invoke-direct {v1, v2, v0, v14, v15}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 41
    new-instance v2, Lcom/android/dx/dex/file/ItemType;

    const/16 v14, 0x2003

    const-string v15, "debug_info_item"

    move/from16 v35, v0

    const-string v0, "TYPE_DEBUG_INFO_ITEM"

    move-object/from16 v36, v1

    const/16 v1, 0x10

    invoke-direct {v2, v0, v1, v14, v15}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 42
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    const/16 v14, 0x2004

    const-string v15, "annotation_item"

    move/from16 v37, v1

    const-string v1, "TYPE_ANNOTATION_ITEM"

    move-object/from16 v38, v2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 43
    new-instance v1, Lcom/android/dx/dex/file/ItemType;

    const/16 v14, 0x2005

    const-string v15, "encoded_array_item"

    move/from16 v39, v2

    const-string v2, "TYPE_ENCODED_ARRAY_ITEM"

    move-object/from16 v40, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0, v14, v15}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 44
    new-instance v2, Lcom/android/dx/dex/file/ItemType;

    const/16 v14, 0x2006

    const-string v15, "annotations_directory_item"

    move/from16 v41, v0

    const-string v0, "TYPE_ANNOTATIONS_DIRECTORY_ITEM"

    move-object/from16 v42, v1

    const/16 v1, 0x13

    invoke-direct {v2, v0, v1, v14, v15}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 45
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    const-string v14, "map_item"

    const-string v15, "TYPE_MAP_ITEM"

    move/from16 v43, v1

    const/16 v1, 0x14

    move-object/from16 v44, v2

    const/4 v2, -0x1

    invoke-direct {v0, v15, v1, v2, v14}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 46
    new-instance v14, Lcom/android/dx/dex/file/ItemType;

    const-string v15, "type_item"

    move/from16 v45, v1

    const-string v1, "TYPE_TYPE_ITEM"

    move-object/from16 v46, v0

    const/16 v0, 0x15

    invoke-direct {v14, v1, v0, v2, v15}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 47
    new-instance v1, Lcom/android/dx/dex/file/ItemType;

    const/16 v15, 0x16

    move/from16 v47, v0

    const-string v0, "exception_handler_item"

    move-object/from16 v48, v3

    const-string v3, "TYPE_EXCEPTION_HANDLER_ITEM"

    invoke-direct {v1, v3, v15, v2, v0}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_EXCEPTION_HANDLER_ITEM:Lcom/android/dx/dex/file/ItemType;

    .line 48
    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    const/16 v3, 0x17

    const-string v15, "annotation_set_ref_item"

    move-object/from16 v49, v1

    const-string v1, "TYPE_ANNOTATION_SET_REF_ITEM"

    invoke-direct {v0, v1, v3, v2, v15}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/android/dx/dex/file/ItemType;

    const/16 v1, 0x18

    .line 24
    new-array v1, v1, [Lcom/android/dx/dex/file/ItemType;

    aput-object v28, v1, v16

    aput-object v30, v1, v17

    aput-object v32, v1, v19

    aput-object v4, v1, v21

    aput-object v6, v1, v22

    aput-object v8, v1, v24

    aput-object v10, v1, v26

    aput-object v12, v1, v18

    aput-object v48, v1, v20

    aput-object v5, v1, v23

    aput-object v7, v1, v25

    aput-object v9, v1, v27

    aput-object v11, v1, v29

    aput-object v13, v1, v31

    aput-object v34, v1, v33

    aput-object v36, v1, v35

    aput-object v38, v1, v37

    aput-object v40, v1, v39

    aput-object v42, v1, v41

    aput-object v44, v1, v43

    aput-object v46, v1, v45

    aput-object v14, v1, v47

    const/16 v2, 0x16

    aput-object v49, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/dx/dex/file/ItemType;->$VALUES:[Lcom/android/dx/dex/file/ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/android/dx/dex/file/ItemType;->mapValue:I

    .line 67
    iput-object p4, p0, Lcom/android/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    .line 71
    const-string p1, "_item"

    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x5

    const/4 p2, 0x0

    invoke-virtual {p4, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    :cond_0
    const/16 p1, 0x5f

    const/16 p2, 0x20

    .line 74
    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .line 24
    const-class v0, Lcom/android/dx/dex/file/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dx/dex/file/ItemType;

    return-object p0
.end method

.method public static values()[Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .line 24
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->$VALUES:[Lcom/android/dx/dex/file/ItemType;

    invoke-virtual {v0}, [Lcom/android/dx/dex/file/ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method


# virtual methods
.method public getMapValue()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/android/dx/dex/file/ItemType;->mapValue:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    return-object v0
.end method
