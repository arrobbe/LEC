.class public final Lcom/my/clec/WhatToDo$myEditTextInit$1;
.super Ljava/lang/Object;
.source "WhatToDo.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/clec/WhatToDo;->myEditTextInit()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWhatToDo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhatToDo.kt\ncom/my/clec/WhatToDo$myEditTextInit$1\n*L\n1#1,488:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/my/clec/WhatToDo$myEditTextInit$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "app_release"
    }
    k = 0x1
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            ")V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/my/clec/WhatToDo$myEditTextInit$1;->this$0:Lcom/my/clec/WhatToDo;

    iput-object p2, p0, Lcom/my/clec/WhatToDo$myEditTextInit$1;->$myEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    .line 247
    iget-object p1, p0, Lcom/my/clec/WhatToDo$myEditTextInit$1;->$myEditText:Landroid/widget/EditText;

    const-string v0, "myEditText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string v1, "myEditText.text"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-eqz p1, :cond_76

    .line 248
    iget-object p1, p0, Lcom/my/clec/WhatToDo$myEditTextInit$1;->$myEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    const/16 v2, 0x64

    if-lt p1, v2, :cond_76

    .line 249
    iget-object p1, p0, Lcom/my/clec/WhatToDo$myEditTextInit$1;->this$0:Lcom/my/clec/WhatToDo;

    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Lcom/my/clec/WhatToDo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6e

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 250
    iget-object v2, p0, Lcom/my/clec/WhatToDo$myEditTextInit$1;->this$0:Lcom/my/clec/WhatToDo;

    const v3, 0x7f09009d

    invoke-virtual {v2, v3}, Lcom/my/clec/WhatToDo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "(findViewById<EditText>(R.id.editText))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 251
    iget-object p1, p0, Lcom/my/clec/WhatToDo$myEditTextInit$1;->$myEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/my/clec/WhatToDo$myEditTextInit$1;->$myEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 252
    :cond_68
    iget-object p1, p0, Lcom/my/clec/WhatToDo$myEditTextInit$1;->this$0:Lcom/my/clec/WhatToDo;

    invoke-virtual {p1}, Lcom/my/clec/WhatToDo;->update_and_show_life_expectancy()Z

    goto :goto_76

    .line 249
    :cond_6e
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_76
    :goto_76
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
