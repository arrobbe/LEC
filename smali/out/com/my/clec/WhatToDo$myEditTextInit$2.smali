.class final Lcom/my/clec/WhatToDo$myEditTextInit$2;
.super Ljava/lang/Object;
.source "WhatToDo.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/clec/WhatToDo;->myEditTextInit()Z
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
.field final synthetic $myEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/my/clec/WhatToDo;


# direct methods
.method constructor <init>(Lcom/my/clec/WhatToDo;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/my/clec/WhatToDo$myEditTextInit$2;->this$0:Lcom/my/clec/WhatToDo;

    iput-object p2, p0, Lcom/my/clec/WhatToDo$myEditTextInit$2;->$myEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 262
    iget-object p1, p0, Lcom/my/clec/WhatToDo$myEditTextInit$2;->this$0:Lcom/my/clec/WhatToDo;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lcom/my/clec/WhatToDo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3c

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 263
    iget-object v0, p0, Lcom/my/clec/WhatToDo$myEditTextInit$2;->this$0:Lcom/my/clec/WhatToDo;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Lcom/my/clec/WhatToDo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "(findViewById<EditText>(R.id.editText))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 264
    iget-object p1, p0, Lcom/my/clec/WhatToDo$myEditTextInit$2;->$myEditText:Landroid/widget/EditText;

    const-string v0, "myEditText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/my/clec/WhatToDo$myEditTextInit$2;->$myEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 265
    :cond_36
    iget-object p1, p0, Lcom/my/clec/WhatToDo$myEditTextInit$2;->this$0:Lcom/my/clec/WhatToDo;

    invoke-virtual {p1}, Lcom/my/clec/WhatToDo;->update_and_show_life_expectancy()Z

    return-void

    .line 262
    :cond_3c
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
