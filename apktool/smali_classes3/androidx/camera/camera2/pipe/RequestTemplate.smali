.class public final Landroidx/camera/camera2/pipe/RequestTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final value:I


# direct methods
.method private synthetic constructor <init>(I)V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    return-void
.end method

.method public static final synthetic box-impl(I)Landroidx/camera/camera2/pipe/RequestTemplate;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/RequestTemplate;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/RequestTemplate;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/RequestTemplate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/RequestTemplate;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/RequestTemplate;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final getName-impl(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 359
    :pswitch_0
    const-string p0, "TEMPLATE_MANUAL"

    return-object p0

    .line 358
    :pswitch_1
    const-string p0, "TEMPLATE_ZERO_SHUTTER_LAG"

    return-object p0

    .line 357
    :pswitch_2
    const-string p0, "TEMPLATE_VIDEO_SNAPSHOT"

    return-object p0

    .line 356
    :pswitch_3
    const-string p0, "TEMPLATE_RECORD"

    return-object p0

    .line 355
    :pswitch_4
    const-string p0, "TEMPLATE_STILL_CAPTURE"

    return-object p0

    .line 354
    :pswitch_5
    const-string p0, "TEMPLATE_PREVIEW"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hashCode-impl(I)I
    .locals 0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestTemplate(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/RequestTemplate;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/RequestTemplate;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/RequestTemplate;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    return v0
.end method
