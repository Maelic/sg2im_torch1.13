python scripts/eval.py --vocab_json /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/datasets/vg150/vocab.json --vg_h5 /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/datasets/experiments/vg150_no_part_whole.h5 --dataset vg150 --vg_image_dir /home/maelic/Documents/PhD/Datasets/VisualGenome/VG_100K --image_size 256,256 --save_gt_imgs 1 --checkpoint /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/checkpoints/VG150_training/checkpoint_with_model.pt --batch_size 8 --output_dir /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/outputs/experiments/no_part_whole  --save_graphs 1

python -m pytorch_fid /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/outputs/VG150_baseline/images_gt /home/maelic/Documents/PhD/ModelZoo/SGG2IM/sg2im/outputs/VG150_baseline/images --device cuda:0