.class public Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultBubbleBehavior;
.super Ljava/lang/Object;
.source "DefaultBubbleBehavior.java"

# interfaces
.implements Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;


# instance fields
.field private final animationManager:Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;


# direct methods
.method public constructor <init>(Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultBubbleBehavior;->animationManager:Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;

    return-void
.end method


# virtual methods
.method public onHandleGrabbed()V
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultBubbleBehavior;->animationManager:Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->show()V

    return-void
.end method

.method public onHandleReleased()V
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/DefaultBubbleBehavior;->animationManager:Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;->hide()V

    return-void
.end method

.method public onScrollFinished()V
    .registers 1

    return-void
.end method

.method public onScrollStarted()V
    .registers 1

    return-void
.end method
