.class public Ly2/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final synthetic c:Ly2/z;

.field public final synthetic d:Ly2/f;

.field public final synthetic e:Ly2/g;


# direct methods
.method public constructor <init>(Ly2/g;Ly2/z;Ly2/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly2/a;->e:Ly2/g;

    iput-object p2, p0, Ly2/a;->c:Ly2/z;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Ly2/a;->b:Z

    .line 2
    iget-object p0, p0, Ly2/a;->c:Ly2/z;

    invoke-interface {p0}, Ly2/z;->b()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ly2/a;->c:Ly2/z;

    invoke-interface {p1}, Ly2/z;->a()V

    .line 2
    iget-boolean p1, p0, Ly2/a;->b:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Ly2/a;->c:Ly2/z;

    iget-object p0, p0, Ly2/a;->d:Ly2/f;

    invoke-interface {p1, p0}, Ly2/z;->d(Ly2/f;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly2/a;->c:Ly2/z;

    invoke-interface {v0, p1}, Ly2/z;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ly2/a;->b:Z

    return-void
.end method
