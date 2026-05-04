.class public abstract Lorg/mvel2/asm/MethodVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REQUIRES_ASM5:Ljava/lang/String; = "This feature requires ASM5"


# instance fields
.field protected final api:I

.field protected mv:Lorg/mvel2/asm/MethodVisitor;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lorg/mvel2/asm/MethodVisitor;-><init>(ILorg/mvel2/asm/MethodVisitor;)V

    return-void
.end method

.method protected constructor <init>(ILorg/mvel2/asm/MethodVisitor;)V
    .locals 2

    .line 82
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

    .line 90
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

    .line 93
    invoke-static {p0}, Lorg/mvel2/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 95
    :cond_2
    iput p1, p0, Lorg/mvel2/asm/MethodVisitor;->api:I

    .line 96
    iput-object p2, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    return-void
.end method


# virtual methods
.method public getDelegate()Lorg/mvel2/asm/MethodVisitor;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    return-object v0
.end method

.method public visitAnnotableParameterCount(IZ)V
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/MethodVisitor;->visitAnnotableParameterCount(IZ)V

    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitAnnotationDefault()Lorg/mvel2/asm/AnnotationVisitor;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lorg/mvel2/asm/MethodVisitor;->visitAnnotationDefault()Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAttribute(Lorg/mvel2/asm/Attribute;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p1}, Lorg/mvel2/asm/MethodVisitor;->visitAttribute(Lorg/mvel2/asm/Attribute;)V

    :cond_0
    return-void
.end method

.method public visitCode()V
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lorg/mvel2/asm/MethodVisitor;->visitCode()V

    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 795
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0}, Lorg/mvel2/asm/MethodVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6

    .line 311
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 312
    invoke-virtual/range {v0 .. v5}, Lorg/mvel2/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/MethodVisitor;->visitIincInsn(II)V

    :cond_0
    return-void
.end method

.method public visitInsn(I)V
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0, p1}, Lorg/mvel2/asm/MethodVisitor;->visitInsn(I)V

    :cond_0
    return-void
.end method

.method public visitInsnAnnotation(ILorg/mvel2/asm/TypePath;Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;
    .locals 2

    .line 641
    iget v0, p0, Lorg/mvel2/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 644
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/asm/MethodVisitor;->visitInsnAnnotation(ILorg/mvel2/asm/TypePath;Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 642
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitIntInsn(II)V
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_0
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/mvel2/asm/Handle;[Ljava/lang/Object;)V
    .locals 2

    .line 470
    iget v0, p0, Lorg/mvel2/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 473
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/mvel2/asm/Handle;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 471
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitJumpInsn(ILorg/mvel2/asm/Label;)V
    .locals 1

    .line 489
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/MethodVisitor;->visitJumpInsn(ILorg/mvel2/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitLabel(Lorg/mvel2/asm/Label;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0, p1}, Lorg/mvel2/asm/MethodVisitor;->visitLabel(Lorg/mvel2/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 2

    .line 553
    iget v0, p0, Lorg/mvel2/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_1

    instance-of v0, p1, Lorg/mvel2/asm/Handle;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/mvel2/asm/Type;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/mvel2/asm/Type;

    .line 555
    invoke-virtual {v0}, Lorg/mvel2/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This feature requires ASM5"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 558
    :cond_1
    :goto_0
    iget v0, p0, Lorg/mvel2/asm/MethodVisitor;->api:I

    const/high16 v1, 0x70000

    if-ge v0, v1, :cond_3

    instance-of v0, p1, Lorg/mvel2/asm/ConstantDynamic;

    if-nez v0, :cond_2

    goto :goto_1

    .line 559
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This feature requires ASM7"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 561
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_4

    .line 562
    invoke-virtual {v0, p1}, Lorg/mvel2/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public visitLineNumber(ILorg/mvel2/asm/Label;)V
    .locals 1

    .line 773
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/MethodVisitor;->visitLineNumber(ILorg/mvel2/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/mvel2/asm/Label;Lorg/mvel2/asm/Label;I)V
    .locals 7

    .line 720
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 721
    invoke-virtual/range {v0 .. v6}, Lorg/mvel2/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/mvel2/asm/Label;Lorg/mvel2/asm/Label;I)V

    :cond_0
    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/mvel2/asm/TypePath;[Lorg/mvel2/asm/Label;[Lorg/mvel2/asm/Label;[ILjava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;
    .locals 10

    .line 753
    iget v0, p0, Lorg/mvel2/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 756
    iget-object v2, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v2, :cond_0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 757
    invoke-virtual/range {v2 .. v9}, Lorg/mvel2/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/mvel2/asm/TypePath;[Lorg/mvel2/asm/Label;[Lorg/mvel2/asm/Label;[ILjava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 754
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitLookupSwitchInsn(Lorg/mvel2/asm/Label;[I[Lorg/mvel2/asm/Label;)V
    .locals 1

    .line 603
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/mvel2/asm/Label;[I[Lorg/mvel2/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitMaxs(II)V
    .locals 1

    .line 785
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/MethodVisitor;->visitMaxs(II)V

    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    iget v0, p0, Lorg/mvel2/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int v4, p1, v0

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, v2

    .line 422
    invoke-virtual/range {v3 .. v8}, Lorg/mvel2/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 442
    iget v0, p0, Lorg/mvel2/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_2

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_2

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p5, v0, :cond_1

    .line 446
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mvel2/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 444
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "INVOKESPECIAL/STATIC on interfaces requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 449
    :cond_2
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_3

    and-int/lit16 v1, p1, -0x101

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 450
    invoke-virtual/range {v0 .. v5}, Lorg/mvel2/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1

    .line 615
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2

    .line 121
    iget v0, p0, Lorg/mvel2/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    :cond_0
    return-void

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visitTableSwitchInsn(IILorg/mvel2/asm/Label;[Lorg/mvel2/asm/Label;)V
    .locals 1

    .line 589
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/mvel2/asm/Label;[Lorg/mvel2/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/mvel2/asm/TypePath;Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;
    .locals 2

    .line 690
    iget v0, p0, Lorg/mvel2/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 693
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/mvel2/asm/TypePath;Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 691
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitTryCatchBlock(Lorg/mvel2/asm/Label;Lorg/mvel2/asm/Label;Lorg/mvel2/asm/Label;Ljava/lang/String;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/asm/MethodVisitor;->visitTryCatchBlock(Lorg/mvel2/asm/Label;Lorg/mvel2/asm/Label;Lorg/mvel2/asm/Label;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILorg/mvel2/asm/TypePath;Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;
    .locals 2

    .line 177
    iget v0, p0, Lorg/mvel2/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/asm/MethodVisitor;->visitTypeAnnotation(ILorg/mvel2/asm/TypePath;Ljava/lang/String;Z)Lorg/mvel2/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 178
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/mvel2/asm/MethodVisitor;->mv:Lorg/mvel2/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_0
    return-void
.end method
