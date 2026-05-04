.class public abstract Lorg/mvel2/asm/FieldVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final api:I

.field protected fv:Lorg/mvel2/asm/FieldVisitor;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lorg/mvel2/asm/FieldVisitor;-><init>(ILorg/mvel2/asm/FieldVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILorg/mvel2/asm/FieldVisitor;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x90000

    const/high16 v1, 0x10a0000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported api "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    .line 77
    invoke-static {p0}, Lorg/mvel2/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 79
    :cond_2
    iput p1, p0, Lorg/mvel2/asm/FieldVisitor;->api:I

    .line 80
    iput-object p2, p0, Lorg/mvel2/asm/FieldVisitor;->fv:Lorg/mvel2/asm/FieldVisitor;

    return-void
.end method


# virtual methods
.method public getDelegate()Lorg/mvel2/asm/FieldVisitor;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/mvel2/asm/FieldVisitor;->fv:Lorg/mvel2/asm/FieldVisitor;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/mvel2/asm/FieldVisitor;->fv:Lorg/mvel2/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitAttribute(Lorg/mvel2/asm/Attribute;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/mvel2/asm/FieldVisitor;->fv:Lorg/mvel2/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lorg/mvel2/asm/FieldVisitor;->visitAttribute(Lorg/mvel2/asm/Attribute;)V

    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/mvel2/asm/FieldVisitor;->fv:Lorg/mvel2/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lorg/mvel2/asm/FieldVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILorg/mvel2/asm/TypePath;Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;
    .locals 2

    .line 122
    iget v0, p0, Lorg/mvel2/asm/FieldVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lorg/mvel2/asm/FieldVisitor;->fv:Lorg/mvel2/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/asm/FieldVisitor;->visitTypeAnnotation(ILorg/mvel2/asm/TypePath;Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
