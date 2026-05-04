.class public abstract Landroidx/camera/camera2/impl/TagsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CAMERAX_TAG_BUNDLE:Landroidx/camera/camera2/pipe/Metadata$Key;

.field private static final USE_CASE_CAMERA_STATE_CUSTOM_TAG:Landroidx/camera/camera2/pipe/Metadata$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    .line 47
    const-class v1, Landroidx/camera/core/impl/TagBundle;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "camerax.tag_bundle"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    .line 24
    sput-object v1, Landroidx/camera/camera2/impl/TagsKt;->CAMERAX_TAG_BUNDLE:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 47
    const-class v1, Ljava/lang/Integer;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string/jumbo v2, "use_case_camera_state.tag"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    .line 26
    sput-object v0, Landroidx/camera/camera2/impl/TagsKt;->USE_CASE_CAMERA_STATE_CUSTOM_TAG:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-void
.end method

.method public static final getCAMERAX_TAG_BUNDLE()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 1

    .line 23
    sget-object v0, Landroidx/camera/camera2/impl/TagsKt;->CAMERAX_TAG_BUNDLE:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object v0
.end method

.method public static final getUSE_CASE_CAMERA_STATE_CUSTOM_TAG()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 1

    .line 25
    sget-object v0, Landroidx/camera/camera2/impl/TagsKt;->USE_CASE_CAMERA_STATE_CUSTOM_TAG:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object v0
.end method
