.class public final synthetic Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field public final synthetic f$3:Lorg/telegram/ui/Components/ImageUpdater;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/Components/ImageUpdater;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iput-object p4, p0, Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/ui/Components/ImageUpdater;

    return-void
.end method


# virtual methods
.method public synthetic canFinishFragment()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$canFinishFragment(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic didStartUpload(ZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$didStartUpload(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;ZZ)V

    return-void
.end method

.method public synthetic didUploadFailed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$didUploadFailed(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    return-void
.end method

.method public final didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 13

    .line 0
    iget v0, p0, Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iget-object v3, p0, Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/ui/Components/ImageUpdater;

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-static/range {v0 .. v12}, Lorg/telegram/messenger/utils/PhotoUtilities;->$r8$lambda$otNObLZ6D1u9ArXEpcP1ZYbBJfs(ILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/Components/ImageUpdater;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    return-void
.end method

.method public synthetic getCloseIntoObject()Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$getCloseIntoObject(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getInitialSearchString()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$getInitialSearchString(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onUploadProgressChanged(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$onUploadProgressChanged(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;F)V

    return-void
.end method

.method public synthetic supportsBulletin()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$supportsBulletin(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method
