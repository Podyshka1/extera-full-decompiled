.class public abstract Landroidx/camera/camera2/compat/EvCompCompatKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_RANGE:Landroid/util/Range;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Landroidx/camera/camera2/compat/EvCompCompatKt;->EMPTY_RANGE:Landroid/util/Range;

    return-void
.end method

.method public static final getEMPTY_RANGE()Landroid/util/Range;
    .locals 1

    .line 61
    sget-object v0, Landroidx/camera/camera2/compat/EvCompCompatKt;->EMPTY_RANGE:Landroid/util/Range;

    return-object v0
.end method
