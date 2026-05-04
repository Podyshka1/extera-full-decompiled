.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/NumberPicker$Formatter;


# instance fields
.field public final synthetic f$0:Ljava/util/Calendar;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/Calendar;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda32;->f$0:Ljava/util/Calendar;

    iput p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda32;->f$1:I

    return-void
.end method


# virtual methods
.method public final format(I)Ljava/lang/String;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda32;->f$0:Ljava/util/Calendar;

    iget v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda32;->f$1:I

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$XnrcXJWfnSC6vyHA6db71n0v4cw(Ljava/util/Calendar;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
