.class public Lg/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lg/X;


# direct methods
.method public constructor <init>(Lg/X;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/E;->b:Lg/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/E;->b:Lg/X;

    iget-object v1, v0, Lg/X;->r:Landroid/widget/PopupWindow;

    iget-object v0, v0, Lg/X;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2
    iget-object v0, p0, Lg/E;->b:Lg/X;

    invoke-virtual {v0}, Lg/X;->V()V

    .line 3
    iget-object v0, p0, Lg/E;->b:Lg/X;

    invoke-virtual {v0}, Lg/X;->D0()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lg/E;->b:Lg/X;

    iget-object v0, v0, Lg/X;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lg/E;->b:Lg/X;

    iget-object v2, v0, Lg/X;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, LM/N;->d(Landroid/view/View;)LM/V;

    move-result-object v2

    invoke-virtual {v2, v1}, LM/V;->a(F)LM/V;

    move-result-object v1

    iput-object v1, v0, Lg/X;->t:LM/V;

    .line 6
    iget-object v0, p0, Lg/E;->b:Lg/X;

    iget-object v0, v0, Lg/X;->t:LM/V;

    new-instance v1, Lg/D;

    invoke-direct {v1, p0}, Lg/D;-><init>(Lg/E;)V

    invoke-virtual {v0, v1}, LM/V;->f(LM/W;)LM/V;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lg/E;->b:Lg/X;

    iget-object v0, v0, Lg/X;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 8
    iget-object p0, p0, Lg/E;->b:Lg/X;

    iget-object p0, p0, Lg/X;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
