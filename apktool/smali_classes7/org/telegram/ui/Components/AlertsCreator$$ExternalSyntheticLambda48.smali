.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$10:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

.field public final synthetic f$11:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$12:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

.field public final synthetic f$13:I

.field public final synthetic f$14:Landroid/content/Context;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$7:Z

.field public final synthetic f$8:[Z

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(ZZZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/tgnet/TLRPC$Chat;Z[ZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;ILandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$0:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$1:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$3:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-boolean p6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$5:Z

    iput-object p7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$6:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean p8, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$7:Z

    iput-object p9, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$8:[Z

    iput-boolean p10, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$9:Z

    iput-object p11, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$10:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    iput-object p12, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$11:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p13, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$12:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iput p14, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$13:I

    iput-object p15, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$14:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$0:Z

    iget-boolean v2, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$1:Z

    iget-boolean v3, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$2:Z

    iget-object v4, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$3:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$5:Z

    iget-object v7, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$6:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v8, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$7:Z

    iget-object v9, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$8:[Z

    iget-boolean v10, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$9:Z

    iget-object v11, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$10:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    iget-object v12, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$11:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v13, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$12:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget v14, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$13:I

    iget-object v15, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda48;->f$14:Landroid/content/Context;

    move-object/from16 v16, p1

    move/from16 v17, p2

    invoke-static/range {v1 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$IuvjF61sJWe7zeoHfUzj-UzT7So(ZZZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/tgnet/TLRPC$Chat;Z[ZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
