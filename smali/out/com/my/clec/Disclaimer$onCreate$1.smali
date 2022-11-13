.class final Lcom/my/clec/Disclaimer$onCreate$1;
.super Ljava/lang/Object;
.source "Disclaimer.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/clec/Disclaimer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $myCheckBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/my/clec/Disclaimer;


# direct methods
.method constructor <init>(Lcom/my/clec/Disclaimer;Landroid/widget/CheckBox;)V
    .registers 3

    iput-object p1, p0, Lcom/my/clec/Disclaimer$onCreate$1;->this$0:Lcom/my/clec/Disclaimer;

    iput-object p2, p0, Lcom/my/clec/Disclaimer$onCreate$1;->$myCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 24
    iget-object p1, p0, Lcom/my/clec/Disclaimer$onCreate$1;->this$0:Lcom/my/clec/Disclaimer;

    const v0, 0x7f09008d

    invoke-virtual {p1, v0}, Lcom/my/clec/Disclaimer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById<CheckBox>(R.id.checkBoxMandatory)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 26
    iget-object p1, p0, Lcom/my/clec/Disclaimer$onCreate$1;->this$0:Lcom/my/clec/Disclaimer;

    iget-object v0, p0, Lcom/my/clec/Disclaimer$onCreate$1;->$myCheckBox:Landroid/widget/CheckBox;

    const-string v1, "myCheckBox"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/my/clec/Disclaimer$onCreate$1;->this$0:Lcom/my/clec/Disclaimer;

    const v2, 0x7f0f0047

    invoke-virtual {v1, v2}, Lcom/my/clec/Disclaimer;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.understood_agreement)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/my/clec/Disclaimer;->save_preferences_disclaimer(ZLjava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/my/clec/Disclaimer$onCreate$1;->this$0:Lcom/my/clec/Disclaimer;

    const v0, 0x7f090086

    invoke-virtual {p1, v0}, Lcom/my/clec/Disclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/my/clec/Disclaimer;->disclaimer_continue(Landroid/view/View;)V

    goto :goto_5c

    .line 30
    :cond_46
    iget-object p1, p0, Lcom/my/clec/Disclaimer$onCreate$1;->this$0:Lcom/my/clec/Disclaimer;

    invoke-virtual {p1, v0}, Lcom/my/clec/Disclaimer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/my/clec/Disclaimer$onCreate$1;->this$0:Lcom/my/clec/Disclaimer;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f060061

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    :goto_5c
    return-void
.end method
