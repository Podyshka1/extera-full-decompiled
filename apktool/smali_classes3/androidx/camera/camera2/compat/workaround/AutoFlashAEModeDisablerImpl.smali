.class public final Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisablerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisablerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisablerImpl;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisablerImpl;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisablerImpl;->INSTANCE:Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisablerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorrectedAeMode(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method
