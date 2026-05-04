.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;[ZLandroid/app/Activity;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda82;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda82;->f$1:[Z

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda82;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda82;->f$3:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda82;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda82;->f$1:[Z

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda82;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda82;->f$3:Ljava/io/File;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$yqT7tYhRIFqBebcQH3kIYkUJb3g(Lorg/telegram/ui/ActionBar/AlertDialog;[ZLandroid/app/Activity;Ljava/io/File;)V

    return-void
.end method
