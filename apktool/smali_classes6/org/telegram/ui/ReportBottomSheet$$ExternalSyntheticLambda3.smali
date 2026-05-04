.class public final synthetic Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:[Z

.field public final synthetic f$6:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$7:Lorg/telegram/ui/Components/BulletinFactory;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZJLjava/util/ArrayList;[ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-boolean p3, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$2:Z

    iput-wide p4, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$3:J

    iput-object p6, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$4:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$5:[Z

    iput-object p8, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$6:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p9, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$7:Lorg/telegram/ui/Components/BulletinFactory;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-boolean v2, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$2:Z

    iget-wide v3, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$3:J

    iget-object v5, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$4:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$5:[Z

    iget-object v7, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$6:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v8, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda3;->f$7:Lorg/telegram/ui/Components/BulletinFactory;

    move-object v9, p1

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/ReportBottomSheet;->$r8$lambda$WAgpFa3S1ODPqa9Nu4hxZ2WRJjw(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZJLjava/util/ArrayList;[ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
