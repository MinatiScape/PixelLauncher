.class public Ll/w;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lk/d;


# instance fields
.field public final b:Landroid/view/CollapsibleActionView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/view/CollapsibleActionView;

    iput-object v0, p0, Ll/w;->b:Landroid/view/CollapsibleActionView;

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    iget-object p0, p0, Ll/w;->b:Landroid/view/CollapsibleActionView;

    invoke-interface {p0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Ll/w;->b:Landroid/view/CollapsibleActionView;

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public g()V
    .locals 0

    .line 1
    iget-object p0, p0, Ll/w;->b:Landroid/view/CollapsibleActionView;

    invoke-interface {p0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    return-void
.end method
