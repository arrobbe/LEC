.class public Landroidx/appcompat/widget/AppCompatRadioButton;
.super Landroid/widget/RadioButton;
.source "AppCompatRadioButton.java"

# interfaces
.implements Landroidx/core/widget/TintableCompoundButton;
.implements Landroidx/core/view/TintableBackgroundView;


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private final mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

.field private final mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 65
    sget v0, Landroidx/appcompat/R$attr;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 69
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance p1, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    .line 71
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 73
    new-instance p1, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 74
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 76
    new-instance p1, Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 77
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    .line 225
    invoke-super {p0}, Landroid/widget/RadioButton;->drawableStateChanged()V

    .line 226
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_a

    .line 227
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 229
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_11

    .line 230
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    :cond_11
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    .line 95
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 96
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v1, :cond_c

    .line 97
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getCompoundPaddingLeft(I)I

    move-result v0

    :cond_c
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 175
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_9

    .line 176
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 203
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_9

    .line 204
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 121
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_9

    .line 122
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 146
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_9

    .line 147
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 209
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_a

    .line 211
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .line 217
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 218
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_a

    .line 219
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    :cond_a
    return-void
.end method

.method public setButtonDrawable(I)V
    .registers 3

    .line 90
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 82
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p1, :cond_a

    .line 84
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->onSetButtonDrawable()V

    :cond_a
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 160
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_7

    .line 161
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 188
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_7

    .line 189
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 108
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_7

    .line 109
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_7

    .line 134
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method