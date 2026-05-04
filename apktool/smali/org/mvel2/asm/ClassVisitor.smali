.class public abstract Lorg/mvel2/asm/ClassVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final api:I

.field protected cv:Lorg/mvel2/asm/ClassVisitor;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lorg/mvel2/asm/ClassVisitor;-><init>(ILorg/mvel2/asm/ClassVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILorg/mvel2/asm/ClassVisitor;)V
    .locals 2

    .line 69
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

    .line 77
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

    .line 80
    invoke-static {p0}, Lorg/mvel2/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 82
    :cond_2
    iput p1, p0, Lorg/mvel2/asm/ClassVisitor;->api:I

    .line 83
    iput-object p2, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    return-void
.end method


# virtual methods
.method public getDelegate()Lorg/mvel2/asm/ClassVisitor;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    return-object v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 119
    iget v0, p0, Lorg/mvel2/asm/ClassVisitor;->api:I

    const/high16 v1, 0x80000

    if-ge v0, v1, :cond_1

    const/high16 v0, 0x10000

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Records requires ASM8"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_2

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 123
    invoke-virtual/range {v0 .. v6}, Lorg/mvel2/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitAttribute(Lorg/mvel2/asm/Attribute;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Lorg/mvel2/asm/ClassVisitor;->visitAttribute(Lorg/mvel2/asm/Attribute;)V

    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lorg/mvel2/asm/ClassVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/asm/FieldVisitor;
    .locals 6

    .line 355
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 356
    invoke-virtual/range {v0 .. v5}, Lorg/mvel2/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/asm/FieldVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/mvel2/asm/MethodVisitor;
    .locals 6

    .line 383
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 384
    invoke-virtual/range {v0 .. v5}, Lorg/mvel2/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/mvel2/asm/MethodVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitModule(Ljava/lang/String;ILjava/lang/String;)Lorg/mvel2/asm/ModuleVisitor;
    .locals 2

    .line 152
    iget v0, p0, Lorg/mvel2/asm/ClassVisitor;->api:I

    const/high16 v1, 0x60000

    if-lt v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lorg/mvel2/asm/ModuleVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 153
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Module requires ASM6"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitNestHost(Ljava/lang/String;)V
    .locals 2

    .line 173
    iget v0, p0, Lorg/mvel2/asm/ClassVisitor;->api:I

    const/high16 v1, 0x70000

    if-lt v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Lorg/mvel2/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 174
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "NestHost requires ASM7"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitNestMember(Ljava/lang/String;)V
    .locals 2

    .line 264
    iget v0, p0, Lorg/mvel2/asm/ClassVisitor;->api:I

    const/high16 v1, 0x70000

    if-lt v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p1}, Lorg/mvel2/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 265
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "NestMember requires ASM7"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitPermittedSubclass(Ljava/lang/String;)V
    .locals 2

    .line 280
    iget v0, p0, Lorg/mvel2/asm/ClassVisitor;->api:I

    const/high16 v1, 0x90000

    if-lt v0, v1, :cond_1

    .line 283
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p1}, Lorg/mvel2/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 281
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "PermittedSubclasses requires ASM9"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mvel2/asm/RecordComponentVisitor;
    .locals 2

    .line 322
    iget v0, p0, Lorg/mvel2/asm/ClassVisitor;->api:I

    const/high16 v1, 0x80000

    if-lt v0, v1, :cond_1

    .line 325
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mvel2/asm/RecordComponentVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 323
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Record requires ASM8"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILorg/mvel2/asm/TypePath;Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;
    .locals 2

    .line 234
    iget v0, p0, Lorg/mvel2/asm/ClassVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 237
    iget-object v0, p0, Lorg/mvel2/asm/ClassVisitor;->cv:Lorg/mvel2/asm/ClassVisitor;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/asm/ClassVisitor;->visitTypeAnnotation(ILorg/mvel2/asm/TypePath;Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 235
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "TypeAnnotation requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
