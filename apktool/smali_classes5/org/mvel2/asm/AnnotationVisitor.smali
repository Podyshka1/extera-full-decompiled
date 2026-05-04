.class public abstract Lorg/mvel2/asm/AnnotationVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final api:I

.field protected av:Lorg/mvel2/asm/AnnotationVisitor;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/mvel2/asm/AnnotationVisitor;-><init>(ILorg/mvel2/asm/AnnotationVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILorg/mvel2/asm/AnnotationVisitor;)V
    .locals 2

    .line 70
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

    .line 78
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

    .line 81
    invoke-static {p0}, Lorg/mvel2/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 83
    :cond_2
    iput p1, p0, Lorg/mvel2/asm/AnnotationVisitor;->api:I

    .line 84
    iput-object p2, p0, Lorg/mvel2/asm/AnnotationVisitor;->av:Lorg/mvel2/asm/AnnotationVisitor;

    return-void
.end method


# virtual methods
.method public getDelegate()Lorg/mvel2/asm/AnnotationVisitor;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/mvel2/asm/AnnotationVisitor;->av:Lorg/mvel2/asm/AnnotationVisitor;

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/mvel2/asm/AnnotationVisitor;->av:Lorg/mvel2/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/mvel2/asm/AnnotationVisitor;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/mvel2/asm/AnnotationVisitor;->av:Lorg/mvel2/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitArray(Ljava/lang/String;)Lorg/mvel2/asm/AnnotationVisitor;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/mvel2/asm/AnnotationVisitor;->av:Lorg/mvel2/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Lorg/mvel2/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitEnd()V
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/mvel2/asm/AnnotationVisitor;->av:Lorg/mvel2/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lorg/mvel2/asm/AnnotationVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/mvel2/asm/AnnotationVisitor;->av:Lorg/mvel2/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
