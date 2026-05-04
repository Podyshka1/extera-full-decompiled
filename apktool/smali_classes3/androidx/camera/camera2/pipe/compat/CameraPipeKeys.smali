.class public final Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;

.field private static final camera2CaptureRequestTag:Landroidx/camera/camera2/pipe/Metadata$Key;

.field private static final camera2ExtensionMode:Landroidx/camera/camera2/pipe/Metadata$Key;

.field private static final ignore3ARequiredParameters:Landroidx/camera/camera2/pipe/Metadata$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;

    .line 25
    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    .line 47
    const-class v1, Ljava/lang/Integer;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "androidx.camera.camera2.pipe.extensionMode"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    .line 25
    sput-object v1, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2ExtensionMode:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 47
    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "androidx.camera.camera2.pipe.captureRequestTag"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    .line 29
    sput-object v1, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2CaptureRequestTag:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 47
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "androidx.camera.camera2.pipe.ignore3ARequiredParameters"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    .line 36
    sput-object v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->ignore3ARequiredParameters:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCamera2CaptureRequestTag()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 1

    .line 28
    sget-object v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2CaptureRequestTag:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object v0
.end method

.method public final getCamera2ExtensionMode()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 1

    .line 24
    sget-object v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2ExtensionMode:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object v0
.end method

.method public final getIgnore3ARequiredParameters()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 1

    .line 35
    sget-object v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->ignore3ARequiredParameters:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object v0
.end method
