.class public final Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdateImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdateImpl;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdateImpl;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdateImpl;->INSTANCE:Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdateImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldUseFlashModeTorch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
