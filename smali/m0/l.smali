.class public Lm0/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/graphics/Rect;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Lm0/o;


# direct methods
.method public constructor <init>(Lm0/o;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/l;->i:Lm0/o;

    iput-object p2, p0, Lm0/l;->c:Landroid/view/View;

    iput-object p3, p0, Lm0/l;->d:Landroid/graphics/Rect;

    iput p4, p0, Lm0/l;->e:I

    iput p5, p0, Lm0/l;->f:I

    iput p6, p0, Lm0/l;->g:I

    iput p7, p0, Lm0/l;->h:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lm0/l;->b:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lm0/l;->b:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lm0/l;->c:Landroid/view/View;

    iget-object v0, p0, Lm0/l;->d:Landroid/graphics/Rect;

    invoke-static {p1, v0}, LM/N;->v0(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3
    iget-object p1, p0, Lm0/l;->c:Landroid/view/View;

    iget v0, p0, Lm0/l;->e:I

    iget v1, p0, Lm0/l;->f:I

    iget v2, p0, Lm0/l;->g:I

    iget p0, p0, Lm0/l;->h:I

    invoke-static {p1, v0, v1, v2, p0}, Lm0/l0;->f(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
