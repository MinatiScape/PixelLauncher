.class public Lcom/android/launcher3/taskbar/TaskbarStashController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field public final synthetic val$isStashed:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->val$isStashed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$002(Lcom/android/launcher3/taskbar/TaskbarStashController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->val$isStashed:Z

    invoke-static {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$102(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)Z

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$100(Lcom/android/launcher3/taskbar/TaskbarStashController;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$200(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V

    return-void
.end method
