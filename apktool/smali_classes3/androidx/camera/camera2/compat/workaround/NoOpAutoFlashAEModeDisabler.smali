.class public final Landroidx/camera/camera2/compat/workaround/NoOpAutoFlashAEModeDisabler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpAutoFlashAEModeDisabler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/workaround/NoOpAutoFlashAEModeDisabler;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/workaround/NoOpAutoFlashAEModeDisabler;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/NoOpAutoFlashAEModeDisabler;->INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpAutoFlashAEModeDisabler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorrectedAeMode(I)I
    .locals 0

    return p1
.end method
