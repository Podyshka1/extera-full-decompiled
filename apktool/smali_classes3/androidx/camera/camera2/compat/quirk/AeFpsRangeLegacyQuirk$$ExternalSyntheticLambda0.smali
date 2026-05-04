.class public final synthetic Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/pipe/CameraMetadata;

.field public final synthetic f$1:Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/pipe/CameraMetadata;

    iput-object p2, p0, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/pipe/CameraMetadata;

    iget-object v1, p0, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;

    invoke-static {v0, v1}, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;->$r8$lambda$M08z1plyKIceWjdadH5XAqm54nQ(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method
