.class public final synthetic Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$6:[Z

.field public final synthetic f$7:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$8:Lorg/telegram/ui/Components/BulletinFactory;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZJLjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;[ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-boolean p3, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$2:Z

    iput-wide p4, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$3:J

    iput-object p6, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$4:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$5:Lorg/telegram/tgnet/TLObject;

    iput-object p8, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$6:[Z

    iput-object p9, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$7:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p10, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$8:Lorg/telegram/ui/Components/BulletinFactory;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-boolean v2, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$2:Z

    iget-wide v3, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$3:J

    iget-object v5, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$4:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$5:Lorg/telegram/tgnet/TLObject;

    iget-object v7, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$6:[Z

    iget-object v8, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$7:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v9, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda13;->f$8:Lorg/telegram/ui/Components/BulletinFactory;

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ReportBottomSheet;->$r8$lambda$M_WfqrZ8xZuG8vbY74nKtmM0Sz0(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZJLjava/util/ArrayList;Lorg/telegram/tgnet/TLObject;[ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;)V

    return-void
.end method
