.class public final synthetic Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-static {p1, p2}, Lcom/exteragram/messenger/camera/CameraXSession;->$r8$lambda$tZn9Vw-7ajOvMRMMd42QgG7wMV8(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method
