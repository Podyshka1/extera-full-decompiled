.class public final synthetic Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/IntPredicate$-CC;->$default$and(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Ljava/util/function/IntPredicate;
    .locals 1

    .line 0
    invoke-static {p0}, Lj$/util/function/IntPredicate$-CC;->$default$negate(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/IntPredicate$-CC;->$default$or(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(I)Z
    .locals 1

    .line 0
    iget v0, p0, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda2;->f$0:I

    invoke-static {v0, p1}, Lcom/exteragram/messenger/camera/CameraXSession;->$r8$lambda$vGDHxvnfSRLnK1Y72oTpmRqaYLU(II)Z

    move-result p1

    return p1
.end method
