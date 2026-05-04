.class Lorg/telegram/ui/Components/AlertsCreator$23;
.super Lorg/telegram/ui/Components/NumberPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createTimePickerDialog(Landroid/content/Context;Ljava/lang/String;IIILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3523
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getContentDescription(I)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    .line 3526
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Hours"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
