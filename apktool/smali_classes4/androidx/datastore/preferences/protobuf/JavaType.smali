.class public final enum Landroidx/datastore/preferences/protobuf/JavaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum BOOLEAN:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum BYTE_STRING:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum DOUBLE:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum ENUM:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum FLOAT:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum INT:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum LONG:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum STRING:Landroidx/datastore/preferences/protobuf/JavaType;

.field public static final enum VOID:Landroidx/datastore/preferences/protobuf/JavaType;


# instance fields
.field private final boxedType:Ljava/lang/Class;

.field private final defaultDefault:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 13
    new-instance v0, Landroidx/datastore/preferences/protobuf/JavaType;

    const-class v4, Ljava/lang/Void;

    const/4 v5, 0x0

    const-string v1, "VOID"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Void;

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/JavaType;->VOID:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 14
    new-instance v1, Landroidx/datastore/preferences/protobuf/JavaType;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v2, "INT"

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 15
    new-instance v8, Landroidx/datastore/preferences/protobuf/JavaType;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v9, "LONG"

    const/4 v10, 0x2

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Long;

    invoke-direct/range {v8 .. v13}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    move-object v2, v8

    sput-object v2, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 16
    new-instance v8, Landroidx/datastore/preferences/protobuf/JavaType;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v9, "FLOAT"

    const/4 v10, 0x3

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Float;

    invoke-direct/range {v8 .. v13}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    move-object v3, v8

    sput-object v3, Landroidx/datastore/preferences/protobuf/JavaType;->FLOAT:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 17
    new-instance v8, Landroidx/datastore/preferences/protobuf/JavaType;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const-string v9, "DOUBLE"

    const/4 v10, 0x4

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Double;

    invoke-direct/range {v8 .. v13}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    move-object v5, v8

    sput-object v5, Landroidx/datastore/preferences/protobuf/JavaType;->DOUBLE:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 18
    new-instance v8, Landroidx/datastore/preferences/protobuf/JavaType;

    const-class v12, Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v9, "BOOLEAN"

    const/4 v10, 0x5

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct/range {v8 .. v13}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    move-object v6, v8

    sput-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->BOOLEAN:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 19
    new-instance v8, Landroidx/datastore/preferences/protobuf/JavaType;

    const-class v12, Ljava/lang/String;

    const-string v13, ""

    const-string v9, "STRING"

    const/4 v10, 0x6

    const-class v11, Ljava/lang/String;

    invoke-direct/range {v8 .. v13}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    move-object v14, v8

    sput-object v14, Landroidx/datastore/preferences/protobuf/JavaType;->STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 20
    new-instance v8, Landroidx/datastore/preferences/protobuf/JavaType;

    const-class v12, Landroidx/datastore/preferences/protobuf/ByteString;

    sget-object v13, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    const-string v9, "BYTE_STRING"

    const/4 v10, 0x7

    const-class v11, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-direct/range {v8 .. v13}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    move-object v15, v8

    sput-object v15, Landroidx/datastore/preferences/protobuf/JavaType;->BYTE_STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 21
    new-instance v8, Landroidx/datastore/preferences/protobuf/JavaType;

    const-class v12, Ljava/lang/Integer;

    const/4 v13, 0x0

    const-string v9, "ENUM"

    const/16 v10, 0x8

    move-object v11, v4

    invoke-direct/range {v8 .. v13}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v8, Landroidx/datastore/preferences/protobuf/JavaType;->ENUM:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 22
    new-instance v16, Landroidx/datastore/preferences/protobuf/JavaType;

    const-class v20, Ljava/lang/Object;

    const/16 v21, 0x0

    const-string v17, "MESSAGE"

    const/16 v18, 0x9

    const-class v19, Ljava/lang/Object;

    invoke-direct/range {v16 .. v21}, Landroidx/datastore/preferences/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v16, Landroidx/datastore/preferences/protobuf/JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

    const/16 v4, 0xa

    .line 11
    new-array v4, v4, [Landroidx/datastore/preferences/protobuf/JavaType;

    aput-object v0, v4, v7

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object v5, v4, v0

    const/4 v0, 0x5

    aput-object v6, v4, v0

    const/4 v0, 0x6

    aput-object v14, v4, v0

    const/4 v0, 0x7

    aput-object v15, v4, v0

    const/16 v0, 0x8

    aput-object v8, v4, v0

    const/16 v0, 0x9

    aput-object v16, v4, v0

    sput-object v4, Landroidx/datastore/preferences/protobuf/JavaType;->$VALUES:[Landroidx/datastore/preferences/protobuf/JavaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/JavaType;->type:Ljava/lang/Class;

    .line 30
    iput-object p4, p0, Landroidx/datastore/preferences/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    .line 31
    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/JavaType;
    .locals 1

    .line 11
    const-class v0, Landroidx/datastore/preferences/protobuf/JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/JavaType;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/JavaType;
    .locals 1

    .line 11
    sget-object v0, Landroidx/datastore/preferences/protobuf/JavaType;->$VALUES:[Landroidx/datastore/preferences/protobuf/JavaType;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/JavaType;

    return-object v0
.end method


# virtual methods
.method public getBoxedType()Ljava/lang/Class;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    return-object v0
.end method
