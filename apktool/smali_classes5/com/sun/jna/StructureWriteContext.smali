.class public Lcom/sun/jna/StructureWriteContext;
.super Lcom/sun/jna/ToNativeContext;
.source "SourceFile"


# instance fields
.field private field:Ljava/lang/reflect/Field;

.field private struct:Lcom/sun/jna/Structure;


# direct methods
.method constructor <init>(Lcom/sun/jna/Structure;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/sun/jna/ToNativeContext;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sun/jna/StructureWriteContext;->struct:Lcom/sun/jna/Structure;

    .line 38
    iput-object p2, p0, Lcom/sun/jna/StructureWriteContext;->field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sun/jna/StructureWriteContext;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getStructure()Lcom/sun/jna/Structure;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sun/jna/StructureWriteContext;->struct:Lcom/sun/jna/Structure;

    return-object v0
.end method
