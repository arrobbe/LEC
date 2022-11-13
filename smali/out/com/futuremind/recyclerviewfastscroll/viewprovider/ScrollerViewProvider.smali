.class public abstract Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;
.super Ljava/lang/Object;
.source "ScrollerViewProvider.java"


# instance fields
.field private bubbleBehavior:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

.field private handleBehavior:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

.field private scroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBubbleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->bubbleBehavior:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->provideBubbleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->bubbleBehavior:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    .line 71
    :cond_a
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->bubbleBehavior:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    return-object v0
.end method

.method public abstract getBubbleOffset()I
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->scroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getHandleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->handleBehavior:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->provideHandleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->handleBehavior:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    .line 66
    :cond_a
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->handleBehavior:Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    return-object v0
.end method

.method protected getScroller()Lcom/futuremind/recyclerviewfastscroll/FastScroller;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->scroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    return-object v0
.end method

.method public onHandleGrabbed()V
    .registers 2

    .line 75
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;->onHandleGrabbed()V

    .line 76
    :cond_d
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;->onHandleGrabbed()V

    :cond_1a
    return-void
.end method

.method public onHandleReleased()V
    .registers 2

    .line 80
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;->onHandleReleased()V

    .line 81
    :cond_d
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;->onHandleReleased()V

    :cond_1a
    return-void
.end method

.method public onScrollFinished()V
    .registers 2

    .line 90
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;->onScrollFinished()V

    .line 91
    :cond_d
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;->onScrollFinished()V

    :cond_1a
    return-void
.end method

.method public onScrollStarted()V
    .registers 2

    .line 85
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;->onScrollStarted()V

    .line 86
    :cond_d
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;->onScrollStarted()V

    :cond_1a
    return-void
.end method

.method protected abstract provideBubbleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;
.end method

.method public abstract provideBubbleTextView()Landroid/widget/TextView;
.end method

.method public abstract provideBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract provideHandleBehavior()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;
.end method

.method public abstract provideHandleView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public setFastScroller(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->scroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    return-void
.end method
